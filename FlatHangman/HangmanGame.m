//
//  HangmanGame.m
//  FlatHangman
//
//  Created by Albert Jo on 3/30/15.
//  Copyright (c) 2015 Nam Hyun Jo. All rights reserved.
//

#import "HangmanGame.h"
#import "HangmanWords.h"

@implementation HangmanGame

- (id)init {
    if (self = [super init]) {
        words = [[HangmanWords alloc] init];
        [self newGame];
    }
    return self;
}

- (void)newGame {
    currentWord = [[words getWord] lowercaseString];
    wordProgress = [[NSMutableArray alloc] init];
    wordArray = [[NSMutableArray alloc] init];
    tries = 5;
    won = false;
    
    for (int i = 0; i < [currentWord length]; i++) {
        char currentCh = [currentWord characterAtIndex:i];
        [wordArray addObject:[NSString stringWithFormat:@"%c", currentCh]];
        if (currentCh != ' ') {
            [wordProgress addObject: @"_"];
        } else {
            [wordProgress addObject:@" "];
        }
    }
    
    
}

- (void)guessChar:(NSString *)ch {
    if (tries >= 0) {
        NSMutableArray *indicesOfCh = [[NSMutableArray alloc] init];
        for (int i = 0; i < [currentWord length]; i++) {
            NSString *currentCh = [NSString stringWithFormat:@"%c", [currentWord characterAtIndex:i]];
            if ([currentCh isEqualToString:ch]) {
                [indicesOfCh addObject: [NSNumber numberWithInt:i]];
            }
        }
        
        if ([indicesOfCh count] > 0) {
            for (NSNumber *index in indicesOfCh) {
                [wordProgress setObject:ch atIndexedSubscript:[index integerValue]];
            }
        } else {
            tries--;
        }
        
        if ([[wordProgress componentsJoinedByString:@""] isEqualToString:currentWord])  {
            won = true;
        }

    }
}

/* getters */
- (NSString *)getCurrentWord {
    return currentWord;
}

- (NSMutableArray *)getProgressArray {
    return wordProgress;
}

- (NSMutableArray *)getWordArray {
    return wordArray;
}

- (NSInteger)getTries {
    return tries;
}

- (BOOL)wonGame {
    return won;
}


@end
