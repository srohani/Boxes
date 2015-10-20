//
//  main.m
//  Boxes
//
//  Created by Samer Rohani on 2015-10-20.
//  Copyright © 2015 Samer Rohani. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Box *myBox = [[Box alloc] initWithHeight:100 width:15 depth:10];
        
        NSLog(@"the volume of the room is %.2f",[myBox boxVolume]);
        
        Box *urBox = [[Box alloc] initWithHeight:1000 width:3 depth:8];

        NSLog(@"the volume of the room is %.2f",[urBox boxVolume]);

        
        float amountOfBoxes = [myBox fitsIn:urBox];
        
        if ([myBox boxVolume]  > [urBox boxVolume]) {
            NSLog(@"Your box goes into my box %.3f times.",amountOfBoxes);

        } else {
            NSLog(@"My box goes into your box %.3f times.",amountOfBoxes);

        }
        
        
        
    }
    return 0;
}
