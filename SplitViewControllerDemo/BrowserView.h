//
//  BrowserView.h
//  SplitViewControllerDemo
//
//  Created by Will Chilcutt on 3/21/12.
//  Copyright (c) 2012 ETSU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BrowserView : UIViewController <UISplitViewControllerDelegate>
{
    
}

@property (weak, nonatomic) IBOutlet UIToolbar *browserToolbar;

@end
