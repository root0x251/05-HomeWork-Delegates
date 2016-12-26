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
#import "SicknessProtokol.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
#pragma mark - ShoolBoy lvl
//    Ученик:
//    
//    1. Создать пару пациентов и доктора по тому же принципу что и в видео. (Доктор делегат у пациентов)
//    2. У пациента пусть будет температура и другие симптомы, по которым доктор может принимать решение.
//    3. У пациента сделайте метод типа стало хуже и пусть когда станет хуже, то он идет к доктору
//    4. Всех пациентов объедините в массив и в цикле вызовите метод "стало хуже".
//    5. Доктор должен лечить каждого согласно симптомам.
    
    Patient *patient1 = [Patient new];
    Patient *patient2 = [Patient new];
    Patient *patient3 = [Patient new];
    Patient *patient4 = [Patient new];


    patient1.name = @"Roma";
    patient1.temperature = 36.6f;
    
    
    patient2.name = @"Dima";
    patient2.temperature = 37.2f;
    patient2.ill = Cough;
    
    patient3.name = @"Oleg";
    patient3.temperature = 37.8f;
    patient3.ill = BrokenBone;
    
    patient4.name = @"Vlad";
    patient4.temperature = 41.3f;
    patient4.ill = Blind;

    
    Doctor *doctor = [Doctor new];
    
    patient1.delegate = doctor;
    patient2.delegate = doctor;
    patient3.delegate = doctor;
    patient4.delegate = doctor;

    
    NSLog(@"%@ are you okey? %@", patient1.name, [patient1 areYouOk]? @"Yes" : @"No");
    
    
    
    NSLog(@"%@ are you okey? %@", patient2.name, [patient2 areYouOk]? @"Yes" : @"No");
    
//    NSLog(@"=======");
//    
//    NSLog(@"%@ are you okey? %@", patient2.name, [patient2 howAreYou]? @"Yes" : @"No");
//    NSLog(@"=======");
//    
//    NSLog(@"%@ are you okey? %@", patient3.name, [patient3 howAreYou]? @"Yes" : @"No");
//    NSLog(@"=======");
//    
//    NSLog(@"%@ are you okey? %@", patient4.name, [patient4 howAreYou]? @"Yes" : @"No");
//    NSLog(@"=======");

    
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
