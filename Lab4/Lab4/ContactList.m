//
//  ContactList.m
//  Lab4
//
//  Created by Kazunobu Someya on 2021-02-25.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

- (instancetype)initWithContactLists: (NSMutableArray *) contactLists
{
    self = [super init];
    if (self) {
        _contactList = contactLists;
    }
    return self;
}

- (void) addContact: (Contact *) newContact {
    if ([self checkDuplicate: newContact]) {
        [_contactList addObject: newContact];
    } else {
        NSLog(@"The email already exitsts and cannot be created.");
    }
}

- (BOOL) checkDuplicate: (Contact *) newContact {
    for (int i = 0; i < [_contactList count]; i++) {
        if (newContact.email == [_contactList[i] email]) {
            return false;
        }
    }
    return true;
}

@end
