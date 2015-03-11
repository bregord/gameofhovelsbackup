//
//  Ritter.m
//  Bastion
//
//  Created by Kayhan Feroze Qaiser on 16/02/2015.
//
//

#import <Foundation/Foundation.h>
#import "Ritter.h"
#import "Media.h"
#import "Tile.h"
#import "SparrowHelper.h"

@implementation Ritter {
    
}

 //making a road, entering a tile on neutral land, cultivating a meadow, or clearing wood means it can't move any more until the next turn. As simple as having a bool object that is switched


-(id)initWithTile:(Tile *)tile {
    
    if (self=[super initWithUnitType:RITTER]) {
        //custom code here
        

        //SPTexture* baseTexture = [SPTexture textureWithContentsOfFile:@"archer1.png"];
             
        SPTexture* baseTexture = [Media atlasTexture:@"alienGreen.png"];
        SPImage* baseImage = [SPImage imageWithTexture:baseTexture];
        baseImage.scale = 0.4;

        
        [self addChild:baseImage];
        
        
        [SparrowHelper centerPivot:self];

        self.x = tile.x;
        self.y = tile.y;
        

    }
    return self;
    
}


@end