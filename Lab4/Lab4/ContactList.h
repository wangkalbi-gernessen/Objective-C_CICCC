//
//  ContactList.h
//  Lab4
//
//  Created by Kazunobu Someya on 2021-02-25.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactList : NSObject

@property NSMutableArray *contactList;

- (instancetype)initWithContactLists: (NSMutableArray *) contactLists;
- (void) addContact: (Contact *) newContact;
- (BOOL) checkDuplicate: (Contact *) newContact;

@end

NS_ASSUME_NONNULL_END
