//
//  HangmanGame.h
//  FlatHangman
//
//  Created by Albert Jo on 3/30/15.
//  Copyright (c) 2015 Nam Hyun Jo. All rights reserved.
//

#import <Foundation/Foundation.h>
@class HangmanWords;

@interface HangmanGame : NSObject {
    HangmanWords *words;
    NSString *currentWord;
    NSMutableArray *wordProgress;
    NSMutableArray *wordArray;
    NSInteger tries;
    BOOL won;

}

- (NSString *)getCurrentWord;
- (void)guessChar:(NSString *)ch;
- (void)newGame;
- (NSMutableArray *)getProgressArray;
- (NSMutableArray *)getWordArray;
- (NSInteger)getTries;
- (BOOL)wonGame;
@end
