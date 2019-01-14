//
//  Player.m
//  Snake & Ladder
//
//  Created by Yilei Huang on 2019-01-13.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import "Player.h"

@implementation Player
- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = @(0);
        _gameLogic = @{@(4):@14,
                       @9:@31,
                       @20:@38,
                       @28:@84,
                       @40:@59,
                       @51:@67,
                       @63:@81
                       };
        _goingDown = @{@17:@7,
                       @64:@60,
                       @89:@26,
                       @95:@75,
                       @99:@78
                       };
    }
    return self;
}


-(BOOL)roll{
    NSNumber *row =@(arc4random_uniform(6)+1);
    _currentSquare = @(_currentSquare.intValue + row.intValue) ;
    NSLog(@"You rolled %@ \n",row);
    if(_currentSquare.intValue >= 100){
        NSLog(@"congrduation you win");
        return NO;
    }
    if([_gameLogic objectForKey:_currentSquare]){
        _currentSquare = _gameLogic[_currentSquare];
        NSLog(@"congraduation your hit a luck moving up ladder to %@",_currentSquare);
        
    }else if([_goingDown objectForKey:_currentSquare]){
        _currentSquare = _goingDown[_currentSquare];
        NSLog(@"unlucky, your hit a going down sneak to %@",_currentSquare);
    }else{
        NSLog(@"You land on %@",_currentSquare);
    }
    
    return YES;
    
}
@end
