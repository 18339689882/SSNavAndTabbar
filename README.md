# SSNavAndTabbar
简单快速创建App的navigationBar和底部Tabbar。


使用方法：
下载代码 拖入工程。
Appdelegate.m 中导入头文件 #import "SSTabbarViewController.h"

在 didFinishLaunchingWithOptions 方法中加入以下代码：

    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    SSTabbarViewController *tabVC = [[SSTabbarViewController alloc] init];
    self.window.rootViewController = tabVC;
    [self.window makeKeyAndVisible];
    
即可。
