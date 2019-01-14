//
//  PlayerManager.h
//  Snake & Ladder
//
//  Created by Yilei Huang on 2019-01-13.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

NS_ASSUME_NONNULL_BEGIN

@interface PlayerManager : NSObject
@property NSMutableArray <Player*> *players;
//- (instancetype)initWithPlayers: (NSInteger) input;


@property NSNumber *currentIndex;
-(void)createPlayers:(NSInteger )input;
-(BOOL)roll;
//-(void)output;
@end

NS_ASSUME_NONNULL_END
