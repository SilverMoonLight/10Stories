//
//  StoryViewController.h
//  10Stories
//
//  Created by Grants Office on 12/6/15.
//  Copyright © 2015 Grants Office. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StoryViewController : UIViewController

@property (strong, nonatomic) NSDictionary *stories;
@property (strong, nonatomic) NSArray *answers;
@property (nonatomic) int *complete;


@property (weak, nonatomic) IBOutlet UILabel *part1;

@property (weak, nonatomic) IBOutlet UILabel *part2;

@property (weak, nonatomic) IBOutlet UILabel *part3;

@property (weak, nonatomic) IBOutlet UILabel *part4;

@property (weak, nonatomic) IBOutlet UILabel *part5;
@property (weak, nonatomic) IBOutlet UILabel *part6;

@property (weak, nonatomic) IBOutlet UILabel *part7;

@property (weak, nonatomic) IBOutlet UILabel *part8;

@property (weak, nonatomic) IBOutlet UILabel *part9;
@property (weak, nonatomic) IBOutlet UILabel *part10;

@property (weak, nonatomic) IBOutlet UILabel *done;

@property (weak, nonatomic) IBOutlet UILabel *finalPart;


- (IBAction)showNext:(id)sender;
- (IBAction)action1:(UIGestureRecognizer *)sender;
- (IBAction)action2:(UIGestureRecognizer *)sender;
- (IBAction)action3:(UIGestureRecognizer *)sender;
- (IBAction)action4:(UIGestureRecognizer *)sender;
- (IBAction)action5:(UIGestureRecognizer *)sender;
- (IBAction)action6:(UIGestureRecognizer *)sender;
- (IBAction)action7:(UIGestureRecognizer *)sender;
- (IBAction)action8:(UIGestureRecognizer *)sender;
- (IBAction)action9:(UIGestureRecognizer *)sender;
- (IBAction)action10:(UIGestureRecognizer *)sender;


- (IBAction)returnToMain:(UIGestureRecognizer *)sender;


@property (nonatomic) int partCom;


@end

