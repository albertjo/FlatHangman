//
//  ViewController.h
//  FlatHangman
//
//  Created by Albert Jo on 3/29/15.
//  Copyright (c) 2015 Nam Hyun Jo. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HangmanGame;
@class MainView;

@interface ViewController : UIViewController {
    HangmanGame *game;
    NSArray *buttonArray;
    NSMutableArray *imgArray;
}

@property (weak, nonatomic) IBOutlet UIImageView *img0;
@property (weak, nonatomic) IBOutlet UIImageView *img1;
@property (weak, nonatomic) IBOutlet UIImageView *img2;
@property (weak, nonatomic) IBOutlet UIImageView *img3;
@property (weak, nonatomic) IBOutlet UIImageView *img4;
@property (weak, nonatomic) IBOutlet UIImageView *img5;
@property (weak, nonatomic) IBOutlet UIImageView *img6;
@property (weak, nonatomic) IBOutlet UIImageView *img7;
@property (weak, nonatomic) IBOutlet UIImageView *img8;
@property (weak, nonatomic) IBOutlet UIImageView *img9;
@property (weak, nonatomic) IBOutlet UIImageView *img10;
@property (weak, nonatomic) IBOutlet UIImageView *img11;
@property (weak, nonatomic) IBOutlet UIImageView *img12;
@property (weak, nonatomic) IBOutlet UIImageView *img13;
@property (weak, nonatomic) IBOutlet UIImageView *img14;
@property (weak, nonatomic) IBOutlet UIImageView *img15;
@property (weak, nonatomic) IBOutlet UIImageView *img16;
@property (weak, nonatomic) IBOutlet UIImageView *img17;
@property (weak, nonatomic) IBOutlet UIImageView *img18;
@property (weak, nonatomic) IBOutlet UIImageView *img19;
@property (weak, nonatomic) IBOutlet UIImageView *img20;
@property (weak, nonatomic) IBOutlet UIImageView *img21;
@property (weak, nonatomic) IBOutlet UIImageView *img22;
@property (weak, nonatomic) IBOutlet UIImageView *img23;
@property (weak, nonatomic) IBOutlet UIImageView *img24;
@property (weak, nonatomic) IBOutlet UIImageView *img25;
@property (weak, nonatomic) IBOutlet UIImageView *img26;
@property (weak, nonatomic) IBOutlet UIImageView *img27;
@property (weak, nonatomic) IBOutlet UIImageView *img28;
@property (weak, nonatomic) IBOutlet UIImageView *img29;
@property (weak, nonatomic) IBOutlet UIImageView *img30;
@property (weak, nonatomic) IBOutlet UIImageView *img31;
@property (weak, nonatomic) IBOutlet UIImageView *img32;
@property (weak, nonatomic) IBOutlet UIImageView *img33;
@property (weak, nonatomic) IBOutlet UIImageView *img34;
@property (weak, nonatomic) IBOutlet UIImageView *img35;
@property (weak, nonatomic) IBOutlet UIImageView *img36;
@property (weak, nonatomic) IBOutlet UIImageView *img37;
@property (weak, nonatomic) IBOutlet UIImageView *img38;
@property (weak, nonatomic) IBOutlet UIImageView *img39;



@property (weak, nonatomic) IBOutlet UIView *answerView;
@property (weak, nonatomic) IBOutlet UILabel *liveLabel;
@property (weak, nonatomic) IBOutlet UIButton *aButton;
@property (weak, nonatomic) IBOutlet UIButton *bButton;
@property (weak, nonatomic) IBOutlet UIButton *cButton;
@property (weak, nonatomic) IBOutlet UIButton *dButton;
@property (weak, nonatomic) IBOutlet UIButton *eButton;
@property (weak, nonatomic) IBOutlet UIButton *fButton;
@property (weak, nonatomic) IBOutlet UIButton *gButton;
@property (weak, nonatomic) IBOutlet UIButton *hButton;
@property (weak, nonatomic) IBOutlet UIButton *iButton;
@property (weak, nonatomic) IBOutlet UIButton *jButton;
@property (weak, nonatomic) IBOutlet UIButton *kButton;
@property (weak, nonatomic) IBOutlet UIButton *lButton;
@property (weak, nonatomic) IBOutlet UIButton *mButton;
@property (weak, nonatomic) IBOutlet UIButton *nButton;
@property (weak, nonatomic) IBOutlet UIButton *oButton;
@property (weak, nonatomic) IBOutlet UIButton *pButton;
@property (weak, nonatomic) IBOutlet UIButton *qButton;
@property (weak, nonatomic) IBOutlet UIButton *rButton;
@property (weak, nonatomic) IBOutlet UIButton *sButton;
@property (weak, nonatomic) IBOutlet UIButton *tButton;
@property (weak, nonatomic) IBOutlet UIButton *uButton;
@property (weak, nonatomic) IBOutlet UIButton *vButton;
@property (weak, nonatomic) IBOutlet UIButton *wButton;
@property (weak, nonatomic) IBOutlet UIButton *xButton;
@property (weak, nonatomic) IBOutlet UIButton *yButton;
@property (weak, nonatomic) IBOutlet UIButton *zButton;


- (void)updateView;
- (IBAction)newGame:(id)sender;
- (IBAction)aSelected:(id)sender;
- (IBAction)bSelected:(id)sender;
- (IBAction)cSelected:(id)sender;
- (IBAction)dSelected:(id)sender;
- (IBAction)eSelected:(id)sender;
- (IBAction)fSelected:(id)sender;
- (IBAction)gSelected:(id)sender;
- (IBAction)hSelected:(id)sender;
- (IBAction)iSelected:(id)sender;
- (IBAction)jSelected:(id)sender;
- (IBAction)kSelected:(id)sender;
- (IBAction)lSelected:(id)sender;
- (IBAction)mSelected:(id)sender;
- (IBAction)nSelected:(id)sender;
- (IBAction)oSelected:(id)sender;
- (IBAction)pSelected:(id)sender;
- (IBAction)qSelected:(id)sender;
- (IBAction)rSelected:(id)sender;
- (IBAction)sSelected:(id)sender;
- (IBAction)tSelected:(id)sender;
- (IBAction)uSelected:(id)sender;
- (IBAction)vSelected:(id)sender;
- (IBAction)wSelected:(id)sender;
- (IBAction)xSelected:(id)sender;
- (IBAction)ySelected:(id)sender;
- (IBAction)zSelected:(id)sender;



@end

