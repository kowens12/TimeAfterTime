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
        NSLog(@"The date is %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@", later);
        
        NSHost *computerInformation = [NSHost currentHost];
        [computerInformation localizedName];
        NSString *computerName = [computerInformation localizedName];
        NSLog(@"Computer's name is: %@.", computerName);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"My calendar is %@", [cal calendarIdentifier]);
        
        unsigned long day = [cal ordinalityOfUnit:NSCalendarUnitDay
                                            inUnit:NSCalendarUnitMonth
                                           forDate:now];
        NSLog(@"This is day %lu of the month", day);
    }
    return 0;
}
