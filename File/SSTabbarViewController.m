//
//  TabbarViewController.m
//
//  Created by  on 2018/8/21.
//  Copyright © 2018年. All rights reserved.
//

#import "SSTabbarViewController.h"
#import "SSNavViewController.h"
//Controller
#import "AutoMainViewController.h"
#import "AutoAppointmentVC.h"
#import "AutoMessageViewController.h"
#import "AutoMineViewController.h"

@interface SSTabbarViewController ()


@end

@implementation SSTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addChildVc:[[AutoMainViewController alloc] init] image:@"home" selectedImage:@"homes" title:@"主页"];
    
    [self addChildVc:[[AutoAppointmentVC alloc] init] image:@"Appointment" selectedImage:@"Appointments" title:@"我的预约"];
    
    [self addChildVc:[[AutoMessageViewController alloc] init] image:@"message" selectedImage:@"messages" title:@"消息"];
    
    [self addChildVc:[[AutoMineViewController alloc] init] image:@"me" selectedImage:@"mes" title:@"我的"];
    
    self.selectedIndex = 0;
}

-(void)addChildVc:(UIViewController *)vc image:(NSString *)image selectedImage:(NSString *)selectedImage title:(NSString *)title
{
    self.tabBar.barTintColor = [UIColor whiteColor];

    SSNavViewController *nav = [[SSNavViewController alloc] initWithRootViewController:vc];
    [self addChildViewController:nav];

    vc.title = title;
    
    nav.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    [nav.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor lightGrayColor],NSForegroundColorAttributeName, nil] forState:UIControlStateNormal];
    [nav.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:themeColor, NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
}

@end
