//
//  Patient.m
//  05-HomeWork-Delegates
//
//  Created by Slava on 27.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (BOOL) areYouOk{
    BOOL isOk = arc4random() % 2;
    if (!isOk) {
        [self.delegate patientFeelsBad:self];
    }
    return isOk;
}

- (BOOL) worse{     // стало плохо
    BOOL isFeelBad = arc4random() % 2;
    if (isFeelBad) {
        NSLog(@"Patient %@ was a bad", self.name);
        [self.delegate patientHospitalisation:self];
    }
    return isFeelBad;
}

- (void) takePill{
    NSLog(@"Patient %@ take a pill", self.name);
}

- (void) makeShot{
    NSLog(@"Patient %@, make a shot", self.name);
}

@end
