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
}

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

