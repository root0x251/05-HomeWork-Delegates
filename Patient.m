//
//  Patient.m
//  05-HomeWork-Delegates
//
//  Created by Slava on 26.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "Patient.h"


@implementation Patient

- (BOOL) areYouOk{
    BOOL isOk = arc4random() % 2;
    if (!isOk) {
        [self.delegate patientIsNotOk:self];
    }
    return isOk;
}

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

- (void) hospitalisation{
    NSLog(@"Hospitalisation %@", self.name);
}





@end
