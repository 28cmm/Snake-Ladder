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


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputHandler *inputHandler = [InputHandler new];
        Player *player =[Player new];
        BOOL gameOn = YES;
        while(gameOn){
            NSString *userInput = [inputHandler convertToString:@"please enter a command"];
            if([userInput.lowercaseString isEqual: @"roll"] ||[userInput.lowercaseString isEqual: @"r"]){
                gameOn = [player roll];
            }
        }
    }
    return 0;
}
