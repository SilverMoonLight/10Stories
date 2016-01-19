//
//  Stories.m
//  10Stories
//
//  Created by Grants Office on 12/6/15.
//  Copyright © 2015 Grants Office. All rights reserved.
//


#import "Stories.h"

NSString *const kQuestion1 = @"q1";
NSString *const kQuestion2 = @"q2";
NSString *const kQuestion3 = @"q3";
NSString *const kQuestion4 = @"q4";
NSString *const kQuestion5 = @"q5";
NSString *const kQuestion6 = @"q6";
NSString *const kQuestion7 = @"q7";
NSString *const kQuestion8 = @"q8";
NSString *const kQuestion9 = @"q9";
NSString *const kQuestion10 = @"q10";
NSString *const kAnswer1 = @"a1";
NSString *const kAnswer2 = @"a2";
NSString *const kAnswer3 = @"a3";
NSString *const kAnswer4 = @"a4";
NSString *const kAnswer5 = @"a5";
NSString *const kAnswer6 = @"a6";
NSString *const kAnswer7 = @"a7";
NSString *const kAnswer8 = @"a8";
NSString *const kAnswer9 = @"a9";
NSString *const kAnswer10 = @"a10";
NSString *const kFinalQ = @"qf";
NSString *const picture = @"icon";

@implementation Stories

-(instancetype)init{
    self= [super init];
    if(self){
        self.stories = @[@{kQuestion1: @"Beth:  I’m not sure I’ll ___ this job.  I’ve never been a waitress before.", kQuestion2: @"Kristen:  You’re ____ surprises.", kQuestion3:@"And I ____ you.  You can do it." , kQuestion4: @"Anyway, if you don’t like it, you can ___ other jobs.", kQuestion5: @"Beth: But I haven’t ______ anything in the last few months,", kQuestion6: @"and I’ve never done anything ____ working in a restaurant.  I feel like I’m trying to cheat my way into a job. ", kQuestion7: @"Kristen:  The only thing you’re _____ is not having confidence.", kQuestion8:@"You can do this.  We’re cousins, and I’m not _____ any failures!", kFinalQ: @"Do you think Beth will succeed at her new job? ", picture:@"book.png", kAnswer1:@[@"Beth", @"succeed at", @"succeed of ", @"succeed with"], kAnswer2: @[@"Kristen", @"full of", @"full with", @"full at"], kAnswer3: @[@"Kristen", @"believe at", @"believe with", @"believe in"], kAnswer4: @[@"Kristen", @"look of", @"look into", @"look with"],kAnswer5: @[@"Beth", @"succeed of", @"succeed with", @"succeed at"],  kAnswer6: @[@"Beth", @"related of", @"related with", @"related to"], kAnswer7: @[@"Kristen", @"gulity of", @"gulity with", @"gulity at"], kAnswer8: @[@"Kristen", @"related of", @"related with", @"related to"] }, @{ kQuestion1:@"Duane:  Tommy, did you ____ your cell phone?  You are not answering my texts?", kQuestion2: @"Everyone is looking for you.  We want to know what’s ____ you.", kQuestion3:@"Johnny:  Hey Duane I’m ___ with Tommy." , kQuestion4: @"We’ll never ____ being a band if he goes missing for days and makes us cancel shows.", kQuestion5: @"Duane:  I feel the same way.  His disappearance had better not be ___  drugs.  He can’t handle that stuff.  ", kQuestion6: @"He needs someone to ____ him 24/7.  One mistake and he’s lost. ", kQuestion7: @"Johnny:  Can you visit his house and ___ it?  I don’t know what’s happened to him.  If it is drugs, he’s capable of anything—running away, stealing…anything.  This could be similar to the time he stole his brother’s car last year.", kQuestion8:@"Duane:  I’m a little frightened to go.  I don’t want his parents to think I’m ____ getting him the drugs.  They hate me already because they don’t approve of the band.", kFinalQ: @"Did anything bad happen to Tommy? ", picture:@"book.png", kAnswer1:@[@"Duane", @"turn off", @"turn at", @"turn in"], kAnswer2:@[@"Duane", @"happening to", @"happening of", @"happening in"], kAnswer3:@[@"Johnny", @"fed up to", @"fed at", @"fed up with"], kAnswer4:@[@"Johnny", @"succeed to", @"succeed at", @"succeed in"], kAnswer5:@[@"Duane", @"related with", @"related at", @"related to"], kAnswer6:@[@"Duane", @"look off", @"look with", @"look over"], kAnswer7:@[@"Johnny", @"look into", @"look at", @"look in"], kAnswer8:@[@"Duane", @"gulity with", @"gulity at", @"gulity off"]}, @{kQuestion1:@"Fakebook Announcement: Danny Patron is ___ Gregory Adams", kQuestion2:@"(Facebook Comment) \n Ravi Gupta:  If I could “like” this a million times, I would.  I’m so ___ the two of you. " , kQuestion3:@"I couldn’t be happier.  This couldn’t have ____ a pair of nicer people.  I can’t wait until the party. \n Ravi: Hey Trevor, do you happen to be free on Saturday night? ", kQuestion4:@"We’re invited to a wedding reception--Danny McAden is now married to Gregory Adams, and they are having a party. \n Trevor: Two guys!   No way.  I don’t ____ that stuff.", kQuestion5:@"I don’t want to be ___ society coming to an end!  I won’t be a part of it.", kQuestion6:@"And, oh, I’m ___ work that night—Steve is on vacation and asked if I could work for him. ", kQuestion7:@"Ravi:  You can ___ the excuses.   I know you don’t have work.", kQuestion8:@"These people are in love. I’m ___ your attitude.", kQuestion9:@"I should be more ___ who I ask…and who I date.  \n Trevor: Come on.  I’m a good person.  Two guys getting married--Yuck.", kQuestion10:@"Ravi:  I didn’t think you were ___ that type of prejudice.  I’ll just go by myself.  Don’t bother calling me again.", kFinalQ:@"Do you think Ravi is still interested in a relationship with Trevor? ", picture:@"book.png", kAnswer1:@[@"Facebook Announcement", @"married to", @"married at", @"married off"], kAnswer2:@[@"Ravi", @"fond of", @"fond with", @"fond at"],kAnswer3:@[@"Ravi", @"happened on", @"happened with", @"happened to"], kAnswer4:@[@"Trevor", @"agree on", @"agree to", @"agree of"], kAnswer5:@[@"Trevor", @"responsible to", @"responsible with", @"responsible for" ], kAnswer6:@[@"Trevor", @"busy for", @"busy to", @"busy with"], kAnswer7:@[@"Ravi", @"turn off", @"turn in", @"turn on"], kAnswer8:@[@"Ravi", @"disappointed to", @"disappointed of", @"disappointed with"], kAnswer9:@[@"Ravi", @"careful with", @"careful for", @"careful"], kAnswer10:@[@"Ravi", @"capable in", @"capable of", @"capable on"] }];
    }
    return self;
}

@end
