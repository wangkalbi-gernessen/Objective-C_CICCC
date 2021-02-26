//
//  Contact.h
//  Lab4
//
//  Created by Kazunobu Someya on 2021-02-25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

@property NSString *name;
@property NSString *email;

- (instancetype)initWithName: (NSString *) name AndEmail: (NSString *) email;

@end

NS_ASSUME_NONNULL_END
