//
//  StoryViewController.m
//  10Stories
//
//  Created by Grants Office on 12/6/15.
//  Copyright © 2015 Grants Office. All rights reserved.
//

#import "StoryViewController.h"
#import "Stories.h"
#import "ViewController.h"


@interface StoryViewController ()

@end

@implementation StoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.part1.text = [self.stories objectForKey:kQuestion1];
    self.part2.text = [self.stories objectForKey:kQuestion2];
    self.part3.text = [self.stories objectForKey:kQuestion3];
    self.part4.text = [self.stories objectForKey:kQuestion4];
    self.part5.text = [self.stories objectForKey:kQuestion5];
    self.part6.text = [self.stories objectForKey:kQuestion6];
    self.part7.text = [self.stories objectForKey:kQuestion7];
    self.part8.text = [self.stories objectForKey:kQuestion8];
    self.part9.text = [self.stories objectForKey:kQuestion9];
    self.part10.text = [self.stories objectForKey:kQuestion10];
    
    self.finalPart.text = [self.stories objectForKey:kFinalQ];
    
    [self.part2 setHidden:YES];
    [self.part3 setHidden:YES];
    [self.part4 setHidden:YES];
    [self.part5 setHidden:YES];
    [self.part6 setHidden:YES];
    [self.part7 setHidden:YES];
    [self.part8 setHidden:YES];
    [self.part9 setHidden:YES];
    [self.part10 setHidden:YES];
    [self.done setHidden:YES];
   
  
    [self.finalPart setHidden:YES];
  
    self.partCom = 0;
    
    
   
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}







- (IBAction)showNext:(id)sender {
    
    switch (self.partCom) {
        case 1:
            [self.part2 setHidden:NO];
            break;
        case 2:
            [self.part3 setHidden:NO];
            break;
        case 3:
            [self.part4 setHidden:NO];
            break;
        case 4:
            [self.part5 setHidden:NO];
            break;
        case 5:
            [self.part6 setHidden:NO];
            break;
        case 6:
            [self.part7 setHidden:NO];
            break;
        case 7:
            [self.part8 setHidden:NO];
            break;
        case 8:
            [self.part9 setHidden:NO];
            break;
        case 9:
            [self.part10 setHidden:NO];
            break;
        case 25:
            [self.finalPart setHidden:NO];
            break;
        default:
            break;
    }
        
    
    
    
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if([segue.identifier isEqualToString:@"main"]) {
    
    self.complete++;
    
    ViewController *vc = segue.destinationViewController;
    
    vc.num = self.complete;
    
    }
    
}


- (IBAction)action1:(UIGestureRecognizer *)sender {
    
    self.answers = [NSArray arrayWithArray:[self.stories objectForKey:kAnswer1]];
    
[self AlertVersion1:[self.stories objectForKey:kQuestion1] withPerson:_answers[0] withOp1:_answers[1] withOp2:_answers[2] withOp3:_answers[3]];
    
    
}

- (IBAction)action2:(UIGestureRecognizer *)sender {
    
    self.answers = [NSArray arrayWithArray:[self.stories objectForKey:kAnswer2]];
    
    [self AlertVersion1:[self.stories objectForKey:kQuestion2] withPerson:_answers[0] withOp1:_answers[1] withOp2:_answers[2] withOp3:_answers[3]];
    
    
    
}

- (IBAction)action3:(UIGestureRecognizer *)sender {
    
    self.answers = [NSArray arrayWithArray:[self.stories objectForKey:kAnswer3]];
    
    [self AlertVersion2:[self.stories objectForKey:kQuestion3] withPerson:_answers[0] withOp1:_answers[1] withOp2:_answers[2] withOp3:_answers[3]];
    
    
    
}

- (IBAction)action4:(UIGestureRecognizer *)sender {
    
    self.answers = [NSArray arrayWithArray:[self.stories objectForKey:kAnswer4]];
    
    [self AlertVersion3:[self.stories objectForKey:kQuestion4] withPerson:_answers[0] withOp1:_answers[1] withOp2:_answers[2] withOp3:_answers[3]];
    
    
    
}

- (IBAction)action5:(UIGestureRecognizer *)sender {
    
    self.answers = [NSArray arrayWithArray:[self.stories objectForKey:kAnswer5]];
    
    [self AlertVersion2:[self.stories objectForKey:kQuestion5] withPerson:_answers[0] withOp1:_answers[1] withOp2:_answers[2] withOp3:_answers[3]];
    
    
}

- (IBAction)action6:(UIGestureRecognizer *)sender {
    
    self.answers = [NSArray arrayWithArray:[self.stories objectForKey:kAnswer6]];
    
    [self AlertVersion2:[self.stories objectForKey:kQuestion6] withPerson:_answers[0] withOp1:_answers[1] withOp2:_answers[2] withOp3:_answers[3]];
    
    
}

- (IBAction)action7:(UIGestureRecognizer *)sender {
    
    self.answers = [NSArray arrayWithArray:[self.stories objectForKey:kAnswer7]];
    
    [self AlertVersion1:[self.stories objectForKey:kQuestion7] withPerson:_answers[0] withOp1:_answers[1] withOp2:_answers[2] withOp3:_answers[3]];
    
    
    
}

- (IBAction)action8:(UIGestureRecognizer *)sender {
    
    self.answers = [NSArray arrayWithArray:[self.stories objectForKey:kAnswer8]];
    
    [self AlertVersion2:[self.stories objectForKey:kQuestion8] withPerson:_answers[0] withOp1:_answers[1] withOp2:_answers[2] withOp3:_answers[3]];
    
    if([self.part9.text length] == 0) {
        
        self.partCom = 25;
    }
    
}

- (IBAction)action9:(UIGestureRecognizer *)sender {
    
    self.answers = [NSArray arrayWithArray:[self.stories objectForKey:kAnswer9]];
    
    [self AlertVersion1:[self.stories objectForKey:kQuestion9] withPerson:_answers[0] withOp1:_answers[1] withOp2:_answers[2] withOp3:_answers[3]];
   
    if([self.part10.text length] == 0) {
        
        self.partCom = 25;
    }
    
}

- (IBAction)action10:(UIGestureRecognizer *)sender {
    
    self.answers = [NSArray arrayWithArray:[self.stories objectForKey:kAnswer10]];
    
    [self AlertVersion3:[self.stories objectForKey:kQuestion10] withPerson:_answers[0] withOp1:_answers[1] withOp2:_answers[2] withOp3:_answers[3]];
    
    self.partCom = 25;
}

- (IBAction)returnToMain:(UIGestureRecognizer *)sender {
    
    [self finalAlert:[self.stories objectForKey:kFinalQ]];
    
    [self.done setHidden:NO];
    
    
}





-(void)AlertVersion1:(NSString *)question withPerson:(NSString *)person withOp1:(NSString *)op1 withOp2:(NSString *)op2 withOp3:(NSString *)op3 {
    
    UIAlertController *incorrect = [UIAlertController alertControllerWithTitle:@"Incorrect"
    message: @"Please try again" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertController *correct = [UIAlertController alertControllerWithTitle:@"Correct"
            message: @"Good Job!" preferredStyle:UIAlertControllerStyleActionSheet ];
    
    UIAlertAction *good = [UIAlertAction actionWithTitle:@"Thanks"
                style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
                    self.partCom++;
                   
                }];
    
    [correct addAction:good];
    
    
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:question message:person preferredStyle:UIAlertControllerStyleActionSheet ];
    
    UIAlertAction *choice1 = [UIAlertAction actionWithTitle:op1 style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
        [self presentViewController:correct animated:YES completion:nil];
    } ];
    UIAlertAction *choice2 = [UIAlertAction
                actionWithTitle:op2 style: UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
                                  [self presentViewController:incorrect animated:YES completion:nil];
                              }];
    UIAlertAction *choice3 = [UIAlertAction
        actionWithTitle:op3 style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
                                  [self presentViewController:incorrect animated:YES completion:nil];
                              }];
    
    [alert addAction:choice1];
    [alert addAction:choice2];
    [alert addAction:choice3];
    
    UIAlertAction *okbutton = [UIAlertAction actionWithTitle:@"ok "style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
                    } ];
    [incorrect addAction:okbutton];
    
   
    alert.popoverPresentationController.sourceView = self.view;
    correct.popoverPresentationController.sourceView = self.view;
    incorrect.popoverPresentationController.sourceView = self.view;
    
    [self presentViewController:alert animated:YES completion:nil];

}

-(void)AlertVersion2:(NSString *)question withPerson:(NSString *)person withOp1:(NSString *)op1 withOp2:(NSString *)op2 withOp3:(NSString *)op3 {
    
    UIAlertController *incorrect = [UIAlertController alertControllerWithTitle:@"Incorrect"
                                                                       message: @"Please try again" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertController *correct = [UIAlertController alertControllerWithTitle:@"Correct"
                                                                     message: @"Good Job!" preferredStyle:UIAlertControllerStyleActionSheet ];
    
    UIAlertAction *good = [UIAlertAction actionWithTitle:@"Thanks"
                                                   style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
                                                if(self.partCom < 25) {
                                                   self.partCom++;
                                                       }
                                                   }];
    
    [correct addAction:good];
    
    
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:question message:person preferredStyle:UIAlertControllerStyleActionSheet ];
    
    UIAlertAction *choice1 = [UIAlertAction actionWithTitle:op1 style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
        [self presentViewController:incorrect animated:YES completion:nil];
    } ];
    UIAlertAction *choice2 = [UIAlertAction
                              actionWithTitle:op2 style: UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
                                  [self presentViewController:incorrect animated:YES completion:nil];
                              }];
    UIAlertAction *choice3 = [UIAlertAction
                              actionWithTitle:op3 style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
                                  [self presentViewController:correct animated:YES completion:nil];
                              }];
    
    [alert addAction:choice1];
    [alert addAction:choice2];
    [alert addAction:choice3];
    
    UIAlertAction *okbutton = [UIAlertAction actionWithTitle:@"ok "style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
         } ];
    [incorrect addAction:okbutton];
    
    alert.popoverPresentationController.sourceView = self.view;
    correct.popoverPresentationController.sourceView = self.view;
    incorrect.popoverPresentationController.sourceView = self.view;
    
    [self presentViewController:alert animated:YES completion:nil];
    
}

-(void)AlertVersion3:(NSString *)question withPerson:(NSString *)person withOp1:(NSString *)op1 withOp2:(NSString *)op2 withOp3:(NSString *)op3 {
    
    UIAlertController *incorrect = [UIAlertController alertControllerWithTitle:@"Incorrect"
                                                                       message: @"Please try again" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertController *correct = [UIAlertController alertControllerWithTitle:@"Correct"
                                                                     message: @"Good Job!" preferredStyle:UIAlertControllerStyleActionSheet ];
    
    UIAlertAction *good = [UIAlertAction actionWithTitle:@"Thanks"
                                                   style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
                                                   self.partCom++;
                                                   }];
    
    [correct addAction:good];
    
    
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:question message:person preferredStyle:UIAlertControllerStyleActionSheet ];
    
    UIAlertAction *choice1 = [UIAlertAction actionWithTitle:op1 style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
        [self presentViewController:incorrect animated:YES completion:nil];
    } ];
    UIAlertAction *choice2 = [UIAlertAction
                              actionWithTitle:op2 style: UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
                                  [self presentViewController:correct animated:YES completion:nil];
                              }];
    UIAlertAction *choice3 = [UIAlertAction
                              actionWithTitle:op3 style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
                                  [self presentViewController:incorrect animated:YES completion:nil];
                              }];
    
    [alert addAction:choice1];
    [alert addAction:choice2];
    [alert addAction:choice3];
    
    UIAlertAction *okbutton = [UIAlertAction actionWithTitle:@"ok "style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
        } ];
    [incorrect addAction:okbutton];
    
    alert.popoverPresentationController.sourceView = self.view;
    correct.popoverPresentationController.sourceView = self.view;
    incorrect.popoverPresentationController.sourceView = self.view;
    
    [self presentViewController:alert animated:YES completion:nil];
    
}

-(void)finalAlert:(NSString *)question {
    UIAlertController *incorrect = [UIAlertController alertControllerWithTitle:@"Incorrect"
                                                                       message: @"Please try again" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertController *correct = [UIAlertController alertControllerWithTitle:@"Correct"
                                                                     message: @"Good Job!" preferredStyle:UIAlertControllerStyleActionSheet ];
    
    UIAlertAction *good = [UIAlertAction actionWithTitle:@"Thanks"
                                                   style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action){ }];
    
    [correct addAction:good];
    
    
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:question message:@"" preferredStyle:UIAlertControllerStyleActionSheet ];
    
    UIAlertAction *choice1 = [UIAlertAction actionWithTitle:@"NO" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
        [self presentViewController:correct animated:YES completion:nil];
    } ];
    UIAlertAction *choice2 = [UIAlertAction
                              actionWithTitle:@"YES" style: UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
                                  [self presentViewController:incorrect animated:YES completion:nil];
                              }];
  
    
    [alert addAction:choice1];
    [alert addAction:choice2];
    
    UIAlertAction *okbutton = [UIAlertAction actionWithTitle:@"ok "style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
        [self presentViewController:alert animated:YES completion:nil]; } ];
    [incorrect addAction:okbutton];
    
    alert.popoverPresentationController.sourceView = self.view;
    correct.popoverPresentationController.sourceView = self.view;
    incorrect.popoverPresentationController.sourceView = self.view;
    
    [self presentViewController:alert animated:YES completion:nil];

}




@end
