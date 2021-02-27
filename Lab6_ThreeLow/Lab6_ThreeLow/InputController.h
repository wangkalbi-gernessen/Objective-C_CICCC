//
//  InputController.h
//  Lab6_ThreeLow
//
//  Created by Kazunobu Someya on 2021-02-27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputController : NSObject

- (instancetype)init;
- (NSString *) treatUserInput: (NSString *) userInput;

@end

NS_ASSUME_NONNULL_END
