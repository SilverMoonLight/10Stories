//
//  ViewController.h
//  10Stories
//
//  Created by Grants Office on 12/6/15.
//  Copyright © 2015 Grants Office. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *books;
@property (nonatomic) int *num;
@end

