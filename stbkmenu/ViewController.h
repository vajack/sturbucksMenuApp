//
//  ViewController.h
//  stbkmenu
//
//  Created by Yuhki Ikegami on 2014/03/14.
//  Copyright (c) 2014年 vajackcop. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timer;
    NSDate *stdate;
    NSString *lap;
}
@property (weak, nonatomic) IBOutlet UILabel *size;
@property (weak, nonatomic) IBOutlet UILabel *menu;
- (IBAction)nextmenu:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *lapTime;
@property (weak, nonatomic) IBOutlet UILabel *currentTime;
-(void)onTimer:(NSTimer*)timer;
@end
