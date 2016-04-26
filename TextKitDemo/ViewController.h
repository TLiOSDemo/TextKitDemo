//
//  ViewController.h
//  TextKitDemo
//
//  Created by Andrew on 16/4/26.
//  Copyright © 2016年 Andrew. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic)  UITextView *originalTextView;

@property (strong, nonatomic)  UIView *otherContainerView;
@property (strong, nonatomic)  UIView *thirdContainerView;

- (IBAction)endEditing:(UIBarButtonItem *)sender;

@end

