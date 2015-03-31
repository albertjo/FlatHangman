//
//  ViewController.m
//  FlatHangman
//
//  Created by Albert Jo on 3/29/15.
//  Copyright (c) 2015 Nam Hyun Jo. All rights reserved.
//

#import "ViewController.h"
#import "HangmanGame.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)awakeFromNib {
    game = [[HangmanGame alloc] init];
    NSLog([game getCurrentWord]);
}

- (void)buttonSelected:(id)sender character:(NSString *)ch {
    [game guessChar:ch];
    UIButton *theButton = (UIButton *) sender;
    theButton.enabled = NO;
}

- (IBAction)aSelected:(id)sender {
    [self buttonSelected:sender character:@"a"];

}

- (IBAction)bSelected:(id)sender {
    [self buttonSelected:sender character:@"b"];
}

- (IBAction)cSelected:(id)sender {
    [self buttonSelected:sender character:@"c"];
}

- (IBAction)dSelected:(id)sender {
    [self buttonSelected:sender character:@"d"];
}

- (IBAction)eSelected:(id)sender {
    [self buttonSelected:sender character:@"e"];
}

- (IBAction)fSelected:(id)sender {
    [self buttonSelected:sender character:@"f"];
}

- (IBAction)gSelected:(id)sender {
    [self buttonSelected:sender character:@"g"];
}

- (IBAction)hSelected:(id)sender {
    [self buttonSelected:sender character:@"h"];
}

- (IBAction)iSelected:(id)sender {
    [self buttonSelected:sender character:@"i"];
}

- (IBAction)jSelected:(id)sender {
    [self buttonSelected:sender character:@"j"];
}

- (IBAction)kSelected:(id)sender {
    [self buttonSelected:sender character:@"k"];
}

- (IBAction)lSelected:(id)sender {
    [self buttonSelected:sender character:@"l"];
}

- (IBAction)mSelected:(id)sender {
    [self buttonSelected:sender character:@"m"];
}

- (IBAction)nSelected:(id)sender {
    [self buttonSelected:sender character:@"n"];
}

- (IBAction)oSelected:(id)sender {
    [self buttonSelected:sender character:@"o"];
}

- (IBAction)pSelected:(id)sender {
    [self buttonSelected:sender character:@"p"];
}

- (IBAction)qSelected:(id)sender {
    [self buttonSelected:sender character:@"q"];
}

- (IBAction)rSelected:(id)sender {
    [self buttonSelected:sender character:@"r"];
}

- (IBAction)sSelected:(id)sender {
    [self buttonSelected:sender character:@"s"];
}

- (IBAction)tSelected:(id)sender {
    [self buttonSelected:sender character:@"t"];
}

- (IBAction)uSelected:(id)sender {
    [self buttonSelected:sender character:@"u"];
}

- (IBAction)vSelected:(id)sender {
    [self buttonSelected:sender character:@"v"];
}

- (IBAction)wSelected:(id)sender {
    [self buttonSelected:sender character:@"w"];
}

- (IBAction)xSelected:(id)sender {
    [self buttonSelected:sender character:@"x"];
}

- (IBAction)ySelected:(id)sender {
    [self buttonSelected:sender character:@"y"];
}

- (IBAction)zSelected:(id)sender {
    [self buttonSelected:sender character:@"z"];
}

@end
