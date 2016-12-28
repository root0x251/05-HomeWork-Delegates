//
//  DoctorIdion.m
//  05-HomeWork-Delegates
//
//  Created by Slava on 27.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "DoctorIdion.h"

@implementation DoctorIdion

- (void) patientFeelsBad: (Patient *) patient{
    if (patient.temperature >= 36.f && patient.temperature <=37.f) {
        [patient makeShot];
    }else if (patient.temperature >38.f && patient.temperature <= 41.f) {
        [patient rubbing];
    }else if (patient.temperature >38.f && patient.temperature <= 41.f) {
        NSLog(@"%@, sorry, i have lunch  =) ", patient.name);
    }
}

- (void) patientHospitalisation: (Patient *) patient{
    NSLog(@"ho ho ho, %@, you THOUGHT", patient.name);
}

@end
