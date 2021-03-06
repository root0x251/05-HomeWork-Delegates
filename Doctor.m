//
//  Doctor.m
//  05-HomeWork-Delegates
//
//  Created by Slava on 26.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

//- (void) typesOfDiseases{
//    if (patient) {
//        <#statements#>
//    }
//}

- (void) patientIsNotOk: (Patient *) patient{
    NSLog(@"Patient %@, is not Ok", patient.name);
        if (patient.temperature >= 37.f) {
            [patient howAreYou];
        }
        if (patient.ill == Cough) {
            [patient takePill];
        }else if (patient.ill == BrokenBone){
            [patient hospitalisation];
        }else if (patient.ill == Blind){
            [patient hospitalisation];
        }else{
            NSLog(@"Relax");
        }

}

// если есть температура
- (void) patientFeelsBad: (Patient *) patient{
    NSLog(@"%@ feel bad", patient.name);
    if (patient.temperature >= 37.f && patient.temperature <=39.f) {
        [patient takePill];
    }else if (patient.temperature > 39.f && patient.temperature <= 42.f){
        [patient makeShot];
    }else{
        NSLog(@"Relax %@", patient.name);
    }
}

- (void) patientHospitalisation: (Patient *) patient{
    NSLog(@"%@, you need urgent hospitalization", patient.name);
}


- (void) patient: (Patient *) patient hasQuestion: (NSString *) question{
    NSLog(@"patient %@, has a question: %@", patient.name, question);
}

@end
