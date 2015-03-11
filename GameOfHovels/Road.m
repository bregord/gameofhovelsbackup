//
//  Road.m
//  GameOfHovels
//
//  Created by Brendan on 2015-03-09.
//  Copyright (c) 2015 CivetAtelier. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Road.h"
#import "SparrowHelper.h"
#import "Tile.h"
#import "Media.h"

@implementation Road {
    
}

-(id)initWithTile:(Tile *)tile
{
    
    if (self=[super initWithStructureType:ROAD]) {
        //custom code here
        

        SPTexture* baseTexture = [Media atlasTexture:@"tileDirt.png"];
        SPImage* baseImage = [SPImage imageWithTexture:baseTexture];
        
        
        baseImage.scale = 0.18;
        
        [self addChild:baseImage];
        
        [SparrowHelper centerPivot:self];
        
        
    }
    return self;
    
}


@end