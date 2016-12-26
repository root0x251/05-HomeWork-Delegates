//
//  Doctor.h
//  05-HomeWork-Delegates
//
//  Created by Slava on 26.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@protocol PatientDelegate;

@interface Doctor : NSObject <PatientDelegate>

@end
