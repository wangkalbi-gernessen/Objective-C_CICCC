//
//  AdditionQuestion.h
//  Lab5
//
//  Created by Kazunobu Someya on 2021-02-28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject

@property NSString *question;
@property NSInteger answer;
@property NSInteger left;
@property NSInteger right;
@property NSDate *startTime;
@property NSDate *endTime;

- (instancetype)initWithLeft:(NSInteger) left right: (NSInteger) right;

@end

NS_ASSUME_NONNULL_END
