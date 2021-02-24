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
    float main = [self calculateVolume:[self width] height:[self height] length:[self length]];
    float sub = [box calculateVolume:[box width] height:[box height] length:[box height]];
    if (main > sub) {
        return main / sub;
    } else {
        return sub / main;
    }
    return 3;
}
    
@end
