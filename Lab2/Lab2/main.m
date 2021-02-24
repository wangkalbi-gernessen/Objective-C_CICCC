//
//  main.m
//  Lab2
//
//  Created by Kazunobu Someya on 2021-02-23.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // NSLog(@"Hello, World!");
        Box *cube1 = [[Box alloc] initWithWidth:5.0 AndHeight:6.0 AndLength:3.0];
        NSLog(@"%.2f", [cube1 calculateVolume:[cube1 width] height:[cube1 height] length:[cube1 length]]);
        Box *cube2 = [[Box alloc] initWithWidth:5.0 AndHeight:2.0 AndLength:3.0];
        NSLog(@"%d", [cube2 countFitInAnotherBox: cube1]);
    }
    return 0;
}
