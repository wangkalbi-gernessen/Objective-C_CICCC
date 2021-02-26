//
//  main.m
//  Lab4
//
//  Created by Kazunobu Someya on 2021-02-25.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while(YES) {
            NSLog(@"\nPlease enter number 1 to go to menu: ");
            char menu[3];
            char *toMenu = fgets(menu, 3, stdin);
            // convert char *result to NSString
            NSString *str1 = [NSString stringWithUTF8String: menu];
            // remove all whitespaces of *str
            NSCharacterSet *whitespaces = [NSCharacterSet whitespaceAndNewlineCharacterSet];
            NSString *trimmedInput = [str1 stringByTrimmingCharactersInSet: whitespaces];
            BOOL runOn = NO;
            if (trimmedInput.intValue == 1) {
                runOn = YES;
                NSMutableArray<Contact *> *contactLists = [NSMutableArray new];
                ContactList *contactListObj = [[ContactList alloc] initWithContactLists: contactLists];
                while(YES) {
                    InputCollector *inputResult = [[InputCollector alloc] init];
                    NSString *chosenMenu = [inputResult inputForPrompt: @"\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application\nshow - Show specific detail\nfind - Find specific term\n>_"];
                    if ([chosenMenu isEqualToString:@"new"]) {
                        NSString *username = [inputResult inputForPrompt: @"\nEnter your username: "];
                        NSString *emailAddress = [inputResult inputForPrompt: @"\nEnter your email address: "];
                        Contact *contactB = [[Contact alloc] initWithName: username AndEmail: emailAddress];
                        [contactListObj addContact: contactB];
                    } else if ([chosenMenu isEqualToString:@"list"]) {
                        for (int i = 0; i < [contactLists count]; i++) {
                            NSLog(@"%d:<%@>()", i, [contactLists[i] name]);
                        }
                    } else if ([chosenMenu isEqualToString:@"quit"]) {
                        NSLog(@"\nFinish! Go back to top");
                        runOn = NO;
                        break;
                    } else if ([chosenMenu isEqualToString:@"show"]) {
                        NSString *indexNum = [inputResult inputForPrompt:@"\n Enter index number you want to see: "];
                        int val = indexNum.intValue;
                        int notFoundCount = 0;
                        for (int i = 0; i < [contactLists count]; i++) {
                            if (val == i) {
                                NSLog(@"%d:<%@>()", val, [contactLists[val] name]);
                                break;
                            }
                            notFoundCount++;
                            if (notFoundCount == [contactLists count]) {
                                NSLog(@"not found");
                            }
                        }
                    } else if ([chosenMenu isEqualToString:@"find"]) {
                        NSString *term = [inputResult inputForPrompt:@"\nEnter username or email address you want to find: "];
                        int notFoundCount = 0;
                        for (int i = 0; i < [contactLists count]; i++) {
                            if (term == [contactLists[i] name] || term == [contactLists[i] email]) {
                                NSLog(@"{Name: %@, Email: %@}", [contactLists[i] name], [contactLists[i] email]);
                                break;
                            }
                            notFoundCount++;
                            if (notFoundCount == [contactLists count]) {
                                NSLog(@"not found");
                            }
                        }
                    }
                }
            } else {
                continue;
            }
        }
    }
    return 0;
}

