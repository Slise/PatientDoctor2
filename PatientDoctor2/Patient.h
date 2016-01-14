//
//  Patient.h
//  PatientDoctor2
//
//  Created by Benson Huynh on 2016-01-14.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@interface Patient : NSObject


@property (nonatomic) NSString *name;
@property (nonatomic) int age;
@property (nonatomic) BOOL healthCard;
@property (nonatomic) NSString *symptom;
@property (nonatomic) NSMutableSet *medsTaken;

- (instancetype)initWithAge:(int)anAge name:(NSString*)patientName healthCard:(BOOL)patientHealthCard symptom:(NSString*)aSymptom;

- (void)visitDoctor:(Doctor *)doc;

@end
