//
//  GameScene.m
//  XBlaster
//
//  Created by Iyad Horani on 18/05/2015.
//  Copyright (c) 2015 IRONIC3D. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene

-(instancetype)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Thirteen Pixel Fonts"];
        myLabel.text = @"Hello, World!";
        myLabel.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        myLabel.verticalAlignmentMode = SKLabelVerticalAlignmentModeCenter;
        myLabel.fontSize = 20.0;
        [self addChild:myLabel];
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

@end
