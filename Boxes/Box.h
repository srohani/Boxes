//
//  Box.h
//  Boxes
//
//  Created by Samer Rohani on 2015-10-20.
//  Copyright © 2015 Samer Rohani. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (nonatomic) float height;
@property (nonatomic) float width;
@property (nonatomic) float depth;

- (instancetype)initWithHeight:(float)myHeight width:(float)myWidth depth:(float)myDepth;

- (float)boxVolume;

- (float)fitsIn:(Box *)otherBox;

-(BOOL)isBiggerRoom:(Box *)otherBox;

@end
