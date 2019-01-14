//
//  PlayerManager.m
//  Snake & Ladder
//
//  Created by Yilei Huang on 2019-01-13.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import "PlayerManager.h"

@implementation PlayerManager
- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [NSMutableArray new];
        _currentIndex =@(0);
    }
    return self;
}

-(void)createPlayers:(NSInteger)input{
    for(NSNumber *i =@(0); i.integerValue <input; i =@(i.intValue +1)){
        Player *player = [Player new];
        player.name = [NSString stringWithFormat:@"player%@",@(i.intValue+1)];
        [_players addObject:player];
    }
}


-(BOOL)roll{
    BOOL gameOn = [_players[_currentIndex.intValue] roll];
    if(_currentIndex.intValue < (_players.count-1)){
        _currentIndex = @(_currentIndex.intValue +1);
    }else{
        _currentIndex =@(0);
    }
    //Player *player = [Player new];
    return gameOn;
    
}
//
//    NSNumber *row =@(arc4random_uniform(6)+1);
//    _currentSquare = @(_currentSquare.intValue + row.intValue) ;
//    NSLog(@"You rolled %@ \n",row);
//    if(_currentSquare.intValue >= 100){
//        NSLog(@"congrduation you win");
//        return NO;
//    }
//    if([_gameLogic objectForKey:_currentSquare]){
//        _currentSquare = _gameLogic[_currentSquare];
//        NSLog(@"congraduation your hit a luck moving up ladder to %@",_currentSquare);
//
//    }else if([_goingDown objectForKey:_currentSquare]){
//        _currentSquare = _goingDown[_currentSquare];
//        NSLog(@"unlucky, your hit a going down sneak to %@",_currentSquare);
//    }else{
//        NSLog(@"You land on %@",_currentSquare);
//    }
//
//    return YES;
    
//}


@end
