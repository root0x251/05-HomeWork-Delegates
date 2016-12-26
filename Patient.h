//
//  Patient.h
//  05-HomeWork-Delegates
//
//  Created by Slava on 26.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SicknessProtokol.h"
#import <CoreGraphics/CoreGraphics.h>


@protocol PatientDelegate;

@interface Patient : NSObject

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) CGFloat temperature;
@property (weak, nonatomic) id <PatientDelegate> delegate;

#pragma mark - SicknessProtokol.h
@property (assign, nonatomic) TypesOfDiseases ill;          // вид болячки


- (BOOL) areYouOk;
- (BOOL) howAreYou;
- (void) takePill;
- (void) makeShot;
- (void) hospitalisation;


@end

@protocol PatientDelegate <NSObject>
- (void) patientIsNotOk: (Patient *) patient;
- (void) patientFeelsBad: (Patient *) patient;
- (void) patientHospitalisation: (Patient *) patient;
- (void) patient: (Patient *) patient hasQuestion: (NSString *) question;

@end
