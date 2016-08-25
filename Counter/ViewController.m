//
//  ViewController.m
//  Counter
//
//  Created by Austins Work on 8/24/16.
//  Copyright © 2016 AustinsIronYard. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *firstCounter;
- (IBAction)firstButton:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UIButton *countButton;
- (IBAction)secondButton:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UILabel *secondCounter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.firstCounter.text = @"US";
    self.secondCounter.text = @"THEM";

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)firstButton:(UIButton *)sender {
    NSString *senderTitle = sender.currentTitle;
    
    NSInteger counter = senderTitle.integerValue;
    counter++;
    NSString *stringCounter = [NSString stringWithFormat: @"%@",@(counter)];
    [sender setTitle: stringCounter forState:UIControlStateNormal];

    
}

- (IBAction)secondButton:(UIButton *)sender {
    NSString *senderTitle = sender.currentTitle;
    
    NSInteger counter = senderTitle.integerValue;
    counter++;
    NSString *stringCounter = [NSString stringWithFormat: @"%@",@(counter)];
    [sender setTitle: stringCounter forState:UIControlStateNormal];
}
@end
