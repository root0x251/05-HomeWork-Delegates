//
//  Doctor.m
//  05-HomeWork-Delegates
//
//  Created by Slava on 27.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (void) patientFeelsBad: (Patient *) patient{
    NSLog(@"Patient %@ feel bad", patient.name);
    if (patient.temperature >= 37.f && patient.temperature <= 39.9f) {
        [patient takePill];
    }else if (patient.temperature > 39.9 && patient.temperature <= 44.f){
        [patient makeShot];
    }else{
        NSLog(@"Just a rest");
    }
}

- (void) patientHospitalisation: (Patient *) patient{
    NSLog(@"Patient %@ goes to the reseption", patient.name);     // пациент идет на обследование 
}

- (void) patient: (Patient *) patient hasQuestion: (NSString *) question{
    
}

@end
