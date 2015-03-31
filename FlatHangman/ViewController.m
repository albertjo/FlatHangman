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
@synthesize liveLabel;



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    buttonArray = [NSArray arrayWithObjects: _aButton, _bButton, _cButton, _dButton, _eButton, _fButton, _gButton, _hButton, _iButton, _jButton, _kButton, _lButton, _mButton, _nButton, _oButton, _pButton, _qButton, _rButton, _sButton, _tButton, _uButton, _vButton, _wButton, _xButton, _yButton, _zButton, nil];
    [self updateView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)awakeFromNib {
    game = [[HangmanGame alloc] init];
}

-(BOOL)prefersStatusBarHidden{
    return YES;
}

- (void)updateView {
    liveLabel.text = [NSString stringWithFormat:@"%d/5", [game getTries]];
}

- (IBAction)newGame:(id)sender {
    [game newGame];
    [self updateView];

    for (UIButton *button in buttonArray) {
        button.enabled = YES;
    }
    
    
}


- (void)buttonSelected:(id)sender character:(NSString *)ch {
    [game guessChar:ch];
    UIButton *theButton = (UIButton *) sender;
    theButton.enabled = NO;
    [self updateView];
}

- (IBAction)aSelected:(id)sender {
    [self buttonSelected:sender character:@"a"];
    _aButton.enabled = NO;
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
