//
//  ViewController.m
//  MoveImage
//
//  Created by Xchobo on 2014/3/18.
//  Copyright (c) 2014年 Xchobo. All rights reserved.
//

#import "ViewController.h"
#import "ImageTransform.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet ImageTransform *showImage;

- (IBAction)resetBtn:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // 呼叫 ImageTransform 的形變指定
    [_showImage imgAction];
    
    //設定圖片給 ImageTransform
    [_showImage setImage:[UIImage imageNamed:@"RobotDog.jpg"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)resetBtn:(id)sender {
    [_showImage reset];
}
@end
