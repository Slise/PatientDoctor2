//
//  Doctor.m
//  PatientDoctor2
//
//  Created by Benson Huynh on 2016-01-14.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@interface Doctor ()

@property (nonatomic, strong) NSMutableDictionary *treatment;

@end


@implementation Doctor


- (instancetype)initWithName:(NSString *)aName specializtion:(NSString *)aSpecialization {
    self = [super init];
    if (self) {
        _name = aName;
        _specialiaztion = aSpecialization;
        _patientList = [[NSMutableArray alloc] init];
        _treatment = [@{ @"headache":@"tylenol", @"stomache":@"bismol", @"pain":@"advil"} mutableCopy];
    }
    return self;
    
}

- (void) acceptPatient:(Patient*)patient {
    
    if (!patient.healthCard)
    {
        NSLog(@"Patient does not have healthcard.");
    }
    else
    {
        [self.patientList addObject:patient];
        NSLog(@"New patient %@ added to record", patient.name);
    }
}

- (void) requestMedication:(Patient*)patient {
    NSArray* listOfSymptoms = [self.treatment allKeys];
    if ([listOfSymptoms containsObject:patient.symptom])  {
        NSLog(@"Patient known symptom %@\n", self.treatment[patient.symptom]);
        
        [patient.medsTaken addObject:self.treatment[patient.symptom]];
    } else
    {
        NSLog(@"Patient has uncurable disease and will die!");
        
    }
}


@end
