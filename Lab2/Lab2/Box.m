//
//  Box.m
//  Lab2
//
//  Created by Kazunobu Someya on 2021-02-24.
//

#import "Box.h"

@implementation Box {
    
}

- (instancetype)initWithWidth: (float) width AndHeight: (float) height AndLength: (float) length
{
    self = [super init];
    if (self) {
        _width = width;
        _height = height;
        _length = length;
    }
    return self;
}

- (float) calculateVolume: (float) width height: (float) height length: (float) length {
    return width * height * length;
}

- (int) countFitInAnotherBox: (Box*) box {
    return 3;
}
    
@end
