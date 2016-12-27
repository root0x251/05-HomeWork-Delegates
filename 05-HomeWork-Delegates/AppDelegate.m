//
//  AppDelegate.m
//  05-HomeWork-Delegates
//
//  Created by Slava on 25.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "AppDelegate.h"
#import "Patient.h"
#import "Doctor.h"
#import "DoctorIdion.h"





@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
//    id null = @"=================";
#pragma mark - ShoolBoy lvl
//    Ученик:
//    
//    1. Создать пару пациентов и доктора по тому же принципу что и в видео. (Доктор делегат у пациентов)
//    2. У пациента пусть будет температура и другие симптомы, по которым доктор может принимать решение.
//    3. У пациента сделайте метод типа стало хуже и пусть когда станет хуже, то он идет к доктору
//    4. Всех пациентов объедините в массив и в цикле вызовите метод "стало хуже".
//    5. Доктор должен лечить каждого согласно симптомам.


    //    Студент:
    //
    //    6. Создайте другой класс доктора, не наследника от первого доктора, например друг :)
    //    7. этот друг должен лечить своих пациентов своими собственными методами и короче плохой он доктор
    //    8. пусть кто-то ходит к врачу, а кто-то к нему
    //    9. создайте пару разных объектов класса друг и пусть они лечат своих пациентов (чтобы понять что делегат это не класс, а объект)

    
    Patient *patient1 = [Patient new];
    Patient *patient2 = [Patient new];
    Patient *patient3 = [Patient new];
    Patient *patient4 = [Patient new];
    Patient *patient5 = [Patient new];
    
    patient1.name = @"Roma";
    patient1.temperature = 36.6;
    
    patient2.name = @"Vlad";
    patient2.temperature = 38.5f;
    
    patient3.name = @"Sasha";
    patient3.temperature = 38.2f;
    
    patient4.name = @"Oleg";
    patient4.temperature = 43.5f;
    
    patient5.name = @"Dima";
    patient5.temperature = 36.5f;
    
    Doctor *doctor = [Doctor new];
    
#pragma mark - Student
    
    DoctorIdion *doctorIdiot = [DoctorIdion new];
    
    NSArray *arrayPatient = @[patient1, patient2, patient3, patient4, patient5];
    for (id obj in arrayPatient) {
        if (arc4random() % 2) {
            [obj setDelegate:doctor];
            NSLog(@"===========Doctor============");
            if ([obj worse] == TRUE) {
                NSLog(@"%@, are you ok? %@", [obj name], [obj areYouOk]? @"Yes" : @"No");
            }else{
            NSLog(@"%@, is ok", [obj name]);
            }
        }else{
            [obj setDelegate:doctorIdiot];
            NSLog(@"===========Doctor - IDIOT============");
            if ([obj worse] == TRUE) {
                NSLog(@"%@, are you ok? %@", [obj name], [obj areYouOk]? @"Yes" : @"No");
            }else{
                NSLog(@"%@, is ok", [obj name]);
            }
        }
    }

    

    

    






    
    
    
    
    
    
#pragma mark - Master
//    Мастер:
//    
//    10. Создайте список частей тела в делегате пациента (голова, живот, нога и тд) и когда пациент приходит к врачу, пусть говорит что болит.
//    11. Доктор должен принимать во внимание что болит
//    12. Создайте у доктора метод "рапорт". Пусть в конце дня, когда все уже нажаловались достаточно, доктор составит рапорт (выдаст имена) тех у кого болит голова, потом тех у кого болел живот и тд

#pragma mark - SuperMan
//    Супермен
//    
//    13. Создайте в классе пациента проперти - оценка доктору.
//    14. Когда доктор вам назначает лечение некоторые пациенты должны стать недовольны.
//    15. В конце дня после того как все лечение будет сделано и доктор напишет рапорт, надо пройтись по пациентам и всем недовольным поменять доктора.
//    16. Начать новый день и убедиться что Недовольные пациенты таки поменяли доктора.
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
