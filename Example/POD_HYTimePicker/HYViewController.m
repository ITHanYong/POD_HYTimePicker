//
//  HYViewController.m
//  POD_HYTimePicker
//
//  Created by ITHanYong on 03/18/2020.
//  Copyright (c) 2020 ITHanYong. All rights reserved.
//

#import "HYViewController.h"
#import "HYTimePickerView.h"

@interface HYViewController ()<TimePickerViewDelegate>
@property (nonatomic, strong) UILabel *label;

@end

@implementation HYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(20, 100, 50, 30);
    [btn setTitle:@"时分" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:btn];
    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(20, 60, 250, 30)];
    [self.view addSubview:self.label];
}

-(void)btnClick{
    
    HYTimePickerView *picker = [[HYTimePickerView alloc] initDatePackerWithStartHour:@"00" endHour:@"24" period:15 selectedHour:@"08" selectedMin:@"13"];
    picker.delegate = self;
    [picker show];
}

-(void)timePickerViewDidSelectRow:(NSString *)time{
    
    self.label.text = time;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
