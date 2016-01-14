//
//  Patient.m
//  PatientDoctor2
//
//  Created by Benson Huynh on 2016-01-14.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithAge:(int)anAge name:(NSString*)aName healthCard:(BOOL)aHealthCard symptom:(NSString*)aSymptom
{
    self = [super init];
    if (self) {
        _age = anAge;
        _name = aName;
        _healthCard = aHealthCard;
        _symptom = aSymptom;
        _medsTaken = [NSMutableSet set];
    }
    return self;
}

- (void)visitDoctor:(Doctor *)doc {
    [doc acceptPatient:self];
}

@end
