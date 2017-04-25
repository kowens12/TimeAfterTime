//
//  main.m
//  TimeAfterTime
//
//  Created by Kate Owens  on 4/25/17.
//  Copyright © 2017 Me. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSLog(@"This NSDate object lives %p", now);
    }
    return 0;
}
