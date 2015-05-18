//
//  GameScene.m
//  XBlaster
//
//  Created by Iyad Horani on 18/05/2015.
//  Copyright (c) 2015 IRONIC3D. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene {
    SKNode *_playerLayerNode;
    SKNode *_hudLayerNode;
}

-(instancetype)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        [self setupSceneLayers];
        
        [self setupUI];
    }
    
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {

    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

#pragma mark GAME METHODS

-(void)setupSceneLayers {
    _playerLayerNode = [SKNode node];
    [self addChild:_playerLayerNode];
    
    _hudLayerNode = [SKNode node];
    [self addChild:_hudLayerNode];
}

-(void)setupUI {
    int barHeight = 45;
    CGSize backgroundSize = CGSizeMake(self.size.width, barHeight);
    
    SKColor *backgroundColor = [SKColor colorWithRed:0 green:0 blue:0.05 alpha:1.0];
    SKSpriteNode *hudBarBackground = [SKSpriteNode spriteNodeWithColor:backgroundColor size:backgroundSize];
    
    hudBarBackground.position = CGPointMake(0, self.size.height - barHeight);
    hudBarBackground.anchorPoint = CGPointZero;
    [_hudLayerNode addChild:hudBarBackground];
}

@end
