//
//  Patient.h
//  05-HomeWork-Delegates
//
//  Created by Slava on 27.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>


@protocol PatientDelegate;
@protocol PatientDelegateDoctorIdiot;

@interface Patient : NSObject

typedef enum{
    headache,       // головная боль
    stomachРurts,   // болит живот
    soreLeg         // болит ноги
}Sikcness;

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) CGFloat temperature;
@property (weak, nonatomic) id <PatientDelegate> delegate;
@property (weak, nonatomic) id <PatientDelegateDoctorIdiot> delegateDoctorIdiot;
@property (assign, nonatomic) Sikcness ill;        // болячки



- (BOOL) areYouOk;
- (BOOL) worse;     // стало хуже
- (void) takePill;
- (void) makeShot;
// лечит доктор- идиот

- (void) gargl;
- (void) rubbing;
- (BOOL) worseDoctorIdiot;


// задание мастера
- (BOOL) patientFeelSick;

- (void) headachPill;
// таблетка от боли в животе
- (void) stomachAchePill;
// рентген
- (void) xRay;

@end

@protocol PatientDelegate <NSObject>
- (void) patientBobyAcher: (Patient *) patient;     // у пациента болит тело
- (void) patientFeelsBad: (Patient *) patient;
- (void) patientHospitalisation: (Patient *) patient;
- (void) patient: (Patient *) patient hasQuestion: (NSString *) question;

@end

@protocol PatientDelegateDoctorIdiot <NSObject>
- (void) patientFeelsBad: (Patient *) patient;
- (void) patientHospitalisation: (Patient *) patient;
@end
