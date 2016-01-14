//
//  main.m
//  PatientDoctor2
//
//  Created by Benson Huynh on 2016-01-14.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Patient *patient1 = [[Patient alloc] initWithAge:32 name:@"John" healthCard:YES symptom:@"cancer"];
        Doctor *doc1 = [[Doctor alloc] initWithName:@"Alex" specializtion:@"Neurologist"];
        
        [patient1 visitDoctor:doc1];
        [doc1 requestMedication:patient1];
        
    }
    return 0;
    
}
