//
//  Patient.h
//  05-HomeWork-Delegates
//
//  Created by Slava on 26.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>


@protocol PatientDelegate;

@interface Patient : NSObject

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) CGFloat temperature;
@property (weak, nonatomic) id <PatientDelegate> delegate;

- (BOOL) howAreYou;
- (void) takePill;
- (void) makeShot;
//- (BOOL) youShure;





@end

@protocol PatientDelegate <NSObject>

- (void) patientFeelsBad: (Patient *) patient;
- (void) patientHospitalisation: (Patient *) patient;
- (void) patient: (Patient *) patient hasQuestion: (NSString *) question;

@end
