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
                
                NSMutableArray *contactLists = [NSMutableArray new];
                ContactList *contactListObj = [[ContactList alloc] initWithContactLists: contactLists];
                while(YES) {
                    InputCollector *inputResult = [[InputCollector alloc] init];
                    NSString *chosenMenu = [inputResult inputForPrompt: @"\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application\nshow - Show specific detail\n>_"];
                    if ([chosenMenu isEqualToString:@"new"]) {
                        NSString *username = [inputResult inputForPrompt: @"\nEnter your username: "];
                        NSString *emailAddress = [inputResult inputForPrompt: @"\nEnter your email address: "];
                        Contact *contactB = [[Contact alloc] initWithName: username AndEmail: emailAddress];
                        [contactListObj addContact: contactB];
                    } else if ([chosenMenu isEqualToString:@"list"]) {
                        int index = 0;
                        for (Contact *name in contactLists) {
                            index++;
                            NSLog(@"%d:<%@>()", index , name.name);
                        }
                    } else if ([chosenMenu isEqualToString:@"quit"]) {
                        NSLog(@"\nFinish! Go back to top");
                        runOn = NO;
                        break;
                    } else if ([chosenMenu isEqualToString:@"show"]) {
                        NSString *indexNum = [inputResult inputForPrompt:@"\n Enter index number you want to see"];
                        int val = indexNum.intValue;
                        
                        for (Contact *name in contactLists) {
                            if (index == val) {
                                NSLog(@"%d:<%@>()", index , name.name);
                            }
                        }
                        NSLog(@"not found");
                    } else {
                        NSLog(@"find");
                    }
                }
            } else {
                continue;
            }
        }
    }
    return 0;
}

