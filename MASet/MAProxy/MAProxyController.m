//
//  MAProxyController.m
//  MAProxy
//
//  Created by mazb on 2022/9/16.
//

#import "MAProxyController.h"
#import "MAProxy.h"

@interface MAProxyController ()

@property (nonatomic, strong) NSTimer *timer;


@end

@implementation MAProxyController

- (void)viewDidLoad {
    [super viewDidLoad];

    
//    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerEvent) userInfo:nil repeats:YES];
//    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
//    
    
    
    MAProxy *proxy = [[MAProxy alloc] initWithTarget:self];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:proxy selector:@selector(timerEvent) userInfo:nil repeats:YES];    
}

- (void)timerEvent{
    NSLog(@"%s",__func__);
}

- (void)dealloc{
    
    [self.timer invalidate];
    self.timer = nil;
    NSLog(@"%s",__func__);
}

@end
