//
//  PJWorkoutViewController.m
//  Workout
//
//  Created by John Moon on 5/11/14.
//  Copyright (c) 2014 John Moon. All rights reserved.
//

#import "PJWorkoutViewController.h"

@interface PJWorkoutViewController ()
    @property(nonatomic, weak) IBOutlet UILabel *todayWorkoutLabel;
    @property(nonatomic, weak) IBOutlet UILabel *workoutLabel;
    @property(nonatomic) int currentWorkoutIndex;

    @property (nonatomic, copy) NSArray *workouts;
@end

@implementation PJWorkoutViewController
-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.workouts = @[@"Dumbbell flies", @"Bench press", @"Decline bench"];
    }
    return self;
}
    //When users click add workout they should be direct to this method that allows them to add a new workout from our list of existing workouts
- (IBAction)addWorkout:(id)sender
{
    self.currentWorkoutIndex++;

    if (self.currentWorkoutIndex == [self.workouts count]) {
        self.currentWorkoutIndex = 0;
    }
    
    //self.workouts = "Add Workout";
    NSString *workout = self.workouts[self.currentWorkoutIndex];
    self.workoutLabel.text = workout;
    
}
@end
