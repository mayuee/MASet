//
//  AppDelegate.m
//  MASet
//
//  Created by mazb on 2022/9/16.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    ViewController *vc = [[ViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];

    
//    UINavigationController *nav = [[UINavigationController alloc] initWithNibName:nil bundle:nil];
//    [[Routable sharedRouter] map:@"user" toController:[UserController class]];
//    [[Routable sharedRouter] map:@"modal" toController:[ModalController class] withOptions:[[UPRouterOptions modal] withPresentationStyle:UIModalPresentationFormSheet]];
//    [[Routable sharedRouter] setNavigationController:nav];

    [self.window setRootViewController:nav];
    [self.window makeKeyAndVisible];
    return YES;
}



@end
