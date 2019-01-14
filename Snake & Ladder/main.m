//
//  main.m
//  Snake & Ladder
//
//  Created by Yilei Huang on 2019-01-13.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Player.h"
#import "PlayerManager.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputHandler *inputHandler = [InputHandler new];
        //Player *player =[Player new];
        PlayerManager *playerManager = [PlayerManager new];
        BOOL gameOn = YES;
        BOOL gameAcess =YES;
        while(gameOn){
            while(gameAcess){
                NSString *userPlayers = [inputHandler convertToString:@"enter how many player"];
                [playerManager createPlayers:userPlayers.intValue];
                if(playerManager.players.count !=0){
                    gameAcess = NO;
                }else{
                    NSLog(@"please enter a valid numeric input");
                }
            }
                NSString *userInput = [inputHandler convertToString:@"please enter a command"];
                if([userInput.lowercaseString isEqual: @"roll"] ||[userInput.lowercaseString isEqual: @"r"]){
                    gameOn = [playerManager roll];
                    if(gameOn ==NO){
                        NSString *continueOrNot = [inputHandler convertToString:@"please enter a command"];
                        if([continueOrNot.lowercaseString isEqual:@"yes"]){
                            gameAcess =YES;
                        }else{
                            NSLog(@"thank you for playing.");
                        }
                    }
                }

            }
    }
    return 0;
}
