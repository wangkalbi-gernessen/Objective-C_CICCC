//
//  Box.h
//  Lab2
//
//  Created by Kazunobu Someya on 2021-02-24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Box : NSObject
// public properties
@property float width;
@property float height;
@property float length;

- (instancetype)initWithWidth: (float) width AndHeight: (float) height AndLength: (float) length;
- (float) calculateVolume: (float) width height: (float) height length: (float) length;
- (int) countFitInAnotherBox: (Box*) box;

@end

NS_ASSUME_NONNULL_END
