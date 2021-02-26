//
//  Contact.m
//  Lab4
//
//  Created by Kazunobu Someya on 2021-02-25.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithName: (NSString *) name AndEmail: (NSString *) email
{
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
    }
    return self;
}

@end
