//
//  SSNavViewController.m

//
//  Created by  on 2018/8/21.
//  Copyright © 2018年 . All rights reserved.
//

#import "SSNavViewController.h"

@interface SSNavViewController ()

@end

@implementation SSNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置导航栏文字颜色
    self.navigationBar.titleTextAttributes = [NSDictionary dictionaryWithObjectsAndKeys:themeColor,NSForegroundColorAttributeName, nil];
    //设置导航栏背景颜色
    self.navigationBar.barTintColor = [UIColor whiteColor];
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    [super pushViewController:viewController animated:YES];
    if(self.viewControllers.count > 1)
    {
        viewController.tabBarController.tabBar.hidden = YES;
        viewController.navigationController.navigationBarHidden = NO;
        UIButton *leftBtn = [self buttonWithNormalImage:@"back" addTarget:self action:@selector(backBtn)];
        leftBtn.frame = CGRectMake(0, 0, 25, 25);
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftBtn];
    }
}

-(void)backBtn
{
    [self popViewControllerAnimated:YES];
}

- (UIViewController *)popViewControllerAnimated:(BOOL)animated
{
    [super popViewControllerAnimated:animated];
    if(self.viewControllers.count ==  1)
    {
        self.tabBarController.tabBar.hidden = NO;
    }
    return self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(UIButton *)buttonWithNormalImage:(NSString *)normalName
                          addTarget:(id)target
                             action:(SEL)action
{
    // 设置按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:normalName] forState:UIControlStateNormal];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return btn;
}

@end
