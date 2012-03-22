//
//  SVCAppDelegate.h
//  SplitViewControllerDemo
//
//  Created by Will Chilcutt on 3/21/12.
//  Copyright (c) 2012 ETSU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SVCAppDelegate : UIResponder <UIApplicationDelegate>
{
    UISplitViewController *rootViewController;
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UISplitViewController *rootViewController;

@end
