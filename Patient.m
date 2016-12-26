//
//  Patient.m
//  05-HomeWork-Delegates
//
//  Created by Slava on 26.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (BOOL) howAreYou{
    BOOL isFine = arc4random() % 2;
    if (!isFine) {
        [self.delegate patientFeelsBad: self];
    }
    return isFine;
}

- (void) takePill{
    NSLog(@"%@, takes a pill", self.name);
}

- (void) makeShot{
    NSLog(@"%@, make  shot", self.name);
}





@end
