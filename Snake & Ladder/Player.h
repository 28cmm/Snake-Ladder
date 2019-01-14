//
//  Player.h
//  Snake & Ladder
//
//  Created by Yilei Huang on 2019-01-13.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Player : NSObject

@property NSNumber *currentSquare;
@property NSDictionary *gameLogic;
@property NSDictionary *goingDown;
@property NSString *name;

-(BOOL)roll;
@end

NS_ASSUME_NONNULL_END
