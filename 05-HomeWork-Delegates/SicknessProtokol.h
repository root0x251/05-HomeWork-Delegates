//
//  SicknessProtokol.h
//  05-HomeWork-Delegates
//
//  Created by Slava on 26.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SicknessProtokol <NSObject>

typedef enum{
    Cough,          // кашель
    BrokenBone,     // сломанная кость
    Blind           // ослеп
} TypesOfDiseases;  // вид болячки


@optional
//- (void) cough;         // кашель
//- (void) brokenBone;    // сломанная кость
//- (void) blind;         // ослеп

//@property (strong, nonatomic) NSString *cough;         // кашель
//@property (strong, nonatomic) NSString *brokenBone;    // сломанная кость
//@property (strong, nonatomic) NSString *blind;         // ослеп

@property (assign, nonatomic) TypesOfDiseases ill;         // вид болячки
@end
