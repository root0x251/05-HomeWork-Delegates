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

// так лечит плохой доктор

- (void) gargl{     // полоскать горло
    NSLog(@"%@, needs to gargle", self.name);
}

- (void) rubbing{   // обтирание
    NSLog(@"%@, needs to rubbing", self.name);
}

- (BOOL) worseDoctorIdiot{      // стало хуже
    BOOL isFeelBad = arc4random() % 2;
    if (isFeelBad) {
        NSLog(@"After you treatment, the %@ became ill", self.name);
        [self.delegateDoctorIdiot patientHospitalisation:self];
    }
    return isFeelBad;
}

- (BOOL) patientFeelSick{
    NSLog(@"i have %d",self.ill);
    BOOL feelSick = arc4random() % 2;
    if (feelSick) {
        [self.delegate patientBobyAcher:self];
    }
    return feelSick;
}

// таблетка от головной боли
- (void) headachPill{
    NSLog(@"Patient %@ take a headache pill", self.name);
}
// таблетка от боли в животе
- (void) stomachAchePill{
    NSLog(@"Patient %@ take a stomach ache pill", self.name);
}
// рентген
- (void) xRay{
    NSLog(@"%@, go for x-Ray", self.name);
}
@end
