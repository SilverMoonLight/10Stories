//
//  ViewController.m
//  10Stories
//
//  Created by Grants Office on 12/6/15.
//  Copyright © 2015 Grants Office. All rights reserved.
//

#import "ViewController.h"
#import "Stories.h"
#import "StoryViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    for (NSUInteger i = 0; i < self.books.count; i++) {
        Stories *story = [[Stories alloc] init];
        UIImageView *book = self.books[i];
        
        NSDictionary *bookList = story.stories[i];
        
        NSString *imageName = [bookList objectForKey:picture];
        
        book.image = [UIImage imageNamed:imageName];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"story1" ]) {
        
        self.num = 0;
        
        Stories *story = [[Stories alloc] init];
        
        NSDictionary *part = story.stories[0];
        
        StoryViewController *toStory = segue.destinationViewController;
        
        toStory.stories = part;
        toStory.complete = self.num;
        
    } else if ([segue.identifier isEqualToString:@"story2" ]) {
        
        
        
        Stories *story = [[Stories alloc] init];
        
        NSDictionary *part = story.stories[1];
        
        StoryViewController *toStory = segue.destinationViewController;
        
        toStory.stories = part;
        toStory.complete = self.num;
        
    } else if ([segue.identifier isEqualToString:@"story3" ]) {
        
        
        
        Stories *story = [[Stories alloc] init];
        
        NSDictionary *part = story.stories[2];
        
        StoryViewController *toStory = segue.destinationViewController;
        
        toStory.stories = part;
        toStory.complete = self.num;
        
    }
}

@end
