//
//  Map.h
//  Bastion
//
//  Created by Kayhan Feroze Qaiser on 10/02/2015.
//
//

#import "BasicSprite.h"

@class Tile;
@class GamePlayer;
@class Hud;


@interface Map : BasicSprite {
    
    
    enum playerColours {NEUTRAL = 0 , PLAYER1=0x040cdc, PLAYER2=0xdc0404};

}


@property (nonatomic) GamePlayer* currentPlayer;
@property (nonatomic, readonly) Hud* hud;


- (id)initWithRandomMap:(NSMutableArray*)players hud:(Hud*)hud;
- (void)treeGrowthPhase;
- (void)endTurnUpdates;

- (void)upgradeVillageWithTile:(Tile*)tile;

- (void)showPlayersTeritory;

- (void)moveUnitWithTile:(Tile*)unitTile tile:(Tile*)destTile;
- (void)takeOverTile:(Tile*)unitTile tile:(Tile*)destTile;

- (void)buyUnitFromTile:(Tile*)villageTile tile:(Tile*)destTile;

- (void)chopTree:(Tile*)tile;
- (void)buildMeadow:(Tile*)tile;
- (void)buildRoad:(Tile*)tile;

- (void)updateHud;


@end
