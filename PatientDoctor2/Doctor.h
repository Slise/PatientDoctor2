//
//  Doctor.h
//  PatientDoctor2
//
//  Created by Benson Huynh on 2016-01-14.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Patient;

@interface Doctor : NSObject


@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *specialiaztion;
@property (nonatomic, strong) NSMutableArray *patientList;

- (void) acceptPatient:(Patient*)patient;

- (instancetype)initWithName:(NSString *)aName specializtion:(NSString *)aSpecialization;

- (void) requestMedication:(Patient*)patient;

@end
