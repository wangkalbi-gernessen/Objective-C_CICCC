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
    [_contactList addObject: newContact];
}

@end
