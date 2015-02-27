//
//  ViewController.m
//  stbkmenu
//
//  Created by Yuhki Ikegami on 2014/03/14.
//  Copyright (c) 2014年 vajackcop. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController
@synthesize currentTime;
BOOL timeflg = false;


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.currentTime.text = @"0.00";
    self.lapTime.text = @"0.00";
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"back.png"]];
    timer = [NSTimer scheduledTimerWithTimeInterval:(0.01) target:self selector:@selector(onTimer:) userInfo:nil repeats:YES];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

-(void)onTimer:(NSTimer *)timer{
    if (timeflg) {
        NSDate *now = [NSDate date];
        self.currentTime.text = [NSString stringWithFormat:@"%.2f",
                                 [now timeIntervalSinceDate:stdate]];
        lap = [NSString stringWithFormat:@"%.2f",
               [now timeIntervalSinceDate:stdate]];

    }
}

- (IBAction)nextmenu:(id)sender {
    int menu,size;
    self.menu.adjustsFontSizeToFitWidth = YES;
    self.size.font = [UIFont fontWithName:@"HiraKakuProN-W6" size:25];
    self.menu.font = [UIFont fontWithName:@"HiraKakuProN-W6" size:25];
start1:;
    
    //タイマー
    timeflg = TRUE;
    stdate = [NSDate date];
    self.lapTime.text = [[NSString alloc] initWithFormat:@"%.2f",lap.doubleValue];
    
    //乱数
    srand((unsigned)time(NULL));
    size = rand();
    menu = rand();
    
    //乱数の調整
    size = size % 4;
    menu = menu % 39;
    
    //ドリンクサイズの表示
    switch(size)
    {
        case 0:
            self.size.text = @"ショート\n";
            break;
        case 1:
            self.size.text = @"トール\n";
            break;
        case 2:
            self.size.text = @"グランデ\n";
            break;
        case 3:
            self.size.text = @"ベンティ\n";
            break;
        default:
            goto start1;
            break;
    }
    
start2:;
        
    //ドリンクメニューの表示
    switch (menu) {
        case 0:
            self.menu.text = @"カフェアメリカーノ\n";
            break;
        case 1:
            self.menu.text = @"スターバックスラテ\n";
            break;
        case 2:
            self.menu.text = @"カプチーノ\n";
            break;
        case 3:
            self.menu.text = @"キャラメルマキアート\n";
            break;
        case 4:
            self.menu.text = @"カフェモカ\n";
            break;
        case 5:
            self.menu.text = @"ホワイトモカ\n";
            break;
        case 6:
            self.menu.text = @"チャイティーラテ\n";
            break;
        case 7:
            self.menu.text = @"抹茶ティーラテ\n";
            break;
        case 8:
            self.menu.text = @"ホットティー\n";
            break;
        case 9:
            self.menu.text = @"イングリッシュブレックファストティーラテ\n";
            break;
        case 10:
            self.menu.text = @"ラベンダーアールグレイティーラテ\n";
            break;
        case 11:
            self.menu.text = @"ほうじ茶ティーラテ\n";
            break;
        case 12:
            self.menu.text = @"ホットココア\n";
            break;
        case 13:
            self.menu.text = @"キャラメルスチーマー\n";
            break;
        case 14:
            self.menu.text = @"ホワイトホットチョコレート\n";
            break;
        case 15:
            self.menu.text = @"スチームミルク\n";
            break;
        case 16:
            self.menu.text = @"アイスコーヒー\n";
            break;
        case 17:
            self.menu.text = @"アイスカフェアメリカーノ\n";
            break;
        case 18:
            self.menu.text = @"アイススターバックスラテ\n";
            break;
        case 19:
            self.menu.text = @"アイスキャラメルマキアート\n";
            break;
        case 20:
            self.menu.text = @"アイスカフェモカ\n";
            break;
        case 21:
            self.menu.text = @"アイスホワイトモカ\n";
            break;
        case 22:
            self.menu.text = @"アイスティー\n";
            break;
        case 23:
            self.menu.text = @"アイスチャイティーラテ\n";
            break;
        case 24:
            self.menu.text = @"アイスミルク\n";
            break;
        case 25:
            self.menu.text = @"アイスココア\n";
            break;
        case 26:
            self.menu.text = @"アイスホワイトチョコレート\n";
            break;
        case 27:
            self.menu.text = @"コーヒーフラペチーノ\n";
            break;
        case 28:
            self.menu.text = @"モカフラペチーノ\n";
            break;
        case 29:
            self.menu.text = @"ホワイトモカフラペチーノ\n";
            break;
        case 30:
            self.menu.text = @"キャラメルフラペチーノ\n";
            break;
        case 31:
            self.menu.text = @"コーヒジェリーフラペチーノ\n";
            break;
        case 32:
            self.menu.text = @"ダークモカチップフラペチーノ\n";
            break;
        case 33:
            self.menu.text = @"バニラクリームフラペチーノ\n";
            break;
        case 34:
            self.menu.text = @"抹茶クリームフラペチーノ\n";
            break;
        case 35:
            self.menu.text = @"ダークモカチップクリームフラペチーノ\n";
            break;
        case 36:
            self.menu.text = @"チョコレートクリームフラペチーノ\n";
            break;
        case 37:
            self.menu.text = @"チョコレートクリームチップフラペチーノ\n";
            break;
        case 38:
            self.menu.text = @"マンゴーパッションティーフラペチーノ\n";
            break;
        default:
            goto start2;
            break;
    }
    
    
}
@end
