//
//  Box.m
//  Boxes
//
//  Created by Samer Rohani on 2015-10-20.
//  Copyright © 2015 Samer Rohani. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype)initWithHeight:(float)myHeight width:(float)myWidth depth:(float)myDepth
{
    self = [super init];
    if (self) {
        self.height = myHeight;
        self.width = myWidth;
        self.depth = myDepth;
    }
    return self;
}


- (float)boxVolume {
    
    return self.width * self.height * self.depth;;
}



-(BOOL)isBiggerRoom:(Box *)otherBox {
    
    if ([self boxVolume] > [otherBox boxVolume]) {
        return YES;
        
    }
    
    return NO;
    
}



- (float)fitsIn:(Box *)otherBox {
    float fit;
    
    if ([self boxVolume] > [otherBox boxVolume]) {
        fit = [self boxVolume] / [otherBox boxVolume];
        
        
    } else {
        
        fit = [otherBox boxVolume] / [self boxVolume];
        
    }
    
    return fit;
    
}






@end
