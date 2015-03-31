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
    
    imgArray = [NSMutableArray arrayWithObjects:_img0,_img1,_img2, _img3,_img4,_img5,_img6,_img7,_img8, _img9, _img10, _img11, _img12, _img13, _img14, _img15, _img16, _img17, _img18, _img19, _img20, _img21, _img22, _img23, _img24, _img25, _img26, _img27, _img28, _img29, _img30, _img31, _img32, _img33, _img34, _img35, _img36, _img37, _img38, _img39, nil];
    
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
    liveLabel.text = [NSString stringWithFormat:@"%ld/5", (long)[game getTries]];
    NSMutableArray *progressAry = [game getProgressArray];
    
    for (int i = 0; i < [imgArray count];i++) {
        UIImageView *imgView = [imgArray objectAtIndex:i];
        
        if (i < [progressAry count]) {
            if (![game wonGame]) {
                NSString *currCh = [progressAry objectAtIndex:i];
                if ([currCh isEqualToString:@"_"]) {
                    [imgView setImage: [UIImage imageNamed:@"27.png"]];
                } else {
                    [imgView setImage:[UIImage imageNamed: [NSString stringWithFormat:@"%@.png", currCh]]];
                }
            } else {
                char wordCh = [[game getCurrentWord] characterAtIndex:i];
                if (wordCh != ' ') {
                    [imgView setImage:[UIImage imageNamed: [NSString stringWithFormat:@"%c.png", wordCh]]];
                }
            }
        } else {
            [imgView setImage:[self imageWithColor:[UIColor colorWithRed:0.941 green:0.463 blue:0.463 alpha:1] size:imgView.frame.size]];
        }
    }
    
    if ([game wonGame] || [game getTries] == 0) {
        [self disableAllButtons];
    }
}

- (IBAction)newGame:(id)sender {
    [game newGame];
    [self enableAllButtons];
    [self updateView];
}

- (void)enableAllButtons {
    for (UIButton *button in buttonArray) {
        button.enabled = YES;
    }
}

- (void)disableAllButtons {
    for (UIButton *button in buttonArray) {
        button.enabled = NO;
    }
}

- (UIImage*) imageWithColor:(UIColor*)color size:(CGSize)size
{
    UIGraphicsBeginImageContext(size);
    UIBezierPath* rPath = [UIBezierPath bezierPathWithRect:CGRectMake(0., 0., size.width, size.height)];
    [color setFill];
    [rPath fill];
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
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
