//
//  ViewController.m
//  TextKitDemo
//
//  Created by Andrew on 16/4/26.
//  Copyright © 2016年 Andrew. All rights reserved.
//

#import "ViewController.h"
#import "GlobalConfig.h"


@interface ViewController ()
@property (weak, nonatomic) UITextView *otherTextView;
@property (weak, nonatomic) UITextView *thirdTextView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    
    [self initOriginTextView];
    [self initView];
   
}

-(void)initOriginTextView{
    self.originalTextView =[[UITextView alloc]initWithFrame:CGRectMake(0, 64, SCREEN_WIDTH, 100)];
    self.originalTextView.backgroundColor=[UIColor yellowColor];
    [self.view addSubview:self.originalTextView];

}

-(void)initView{
     //load text
    NSTextStorage *sharedTextStorage= self.originalTextView.textStorage;
   [sharedTextStorage replaceCharactersInRange:NSMakeRange(0, 0) withString:[NSString stringWithContentsOfURL:[NSBundle.mainBundle URLForResource:@"lorem" withExtension:@"txt"] usedEncoding:NULL error:NULL]];
    
    //创建一个新的TextView
    
    NSLayoutManager *otherLayoutManager=[NSLayoutManager new];
    [sharedTextStorage addLayoutManager:otherLayoutManager];
    
    NSTextContainer *otherTextContainer=[NSTextContainer new];
    [otherLayoutManager addTextContainer:otherTextContainer];
    
    
    UITextView *otherTextView=[[UITextView alloc] initWithFrame:self.originalTextView.bounds textContainer:otherTextContainer];
    
    otherTextView.backgroundColor=self.originalTextView.backgroundColor;
    otherTextView.backgroundColor = self.otherContainerView.backgroundColor;
    otherTextView.translatesAutoresizingMaskIntoConstraints = YES;
    otherTextView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
   // otherTextView.scrollEnabled = NO;
    
    [self.otherContainerView addSubview:otherTextView];
     self.otherTextView=otherTextView;
    
}




- (IBAction)endEditing:(UIBarButtonItem *)sender{

}


@end
