//
//  ViewController.m
//  LvProgress
//
//  Created by Lv on 16/7/25.
//  Copyright © 2016年 Lv. All rights reserved.
//

#import "ViewController.h"
#import "ProgressView.h"
@interface ViewController ()
@property (strong, nonatomic) IBOutlet ProgressView *ProgressView;
@property (strong, nonatomic) IBOutlet UILabel *textLabel;

@property (nonatomic,assign) CGFloat startF;

@property (nonatomic,assign) CGFloat endF;

@property (nonatomic,strong) CADisplayLink *link;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];




}
- (void)changeProgress
{
    if (_startF>= _endF) {
        self.ProgressView.progress = _endF * 0.01;
        self.textLabel.text = [NSString stringWithFormat:@"%.2f%%",_endF];
        [self.link invalidate];

    }else{
        self.ProgressView.progress = _startF * 0.01;
        self.textLabel.text = [NSString stringWithFormat:@"%.2f%%",_startF];
    }

    _startF = _startF * 100 + 50;
    _startF = _startF * 0.01;
    

}
- (IBAction)begin:(id)sender {
    
    //初始为55.32%
    self.startF = 0.00;
    self.endF = 55.32;
    
    CADisplayLink *link = [CADisplayLink displayLinkWithTarget:self selector:@selector(changeProgress)];
    [link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
    self.link = link;
}


@end
