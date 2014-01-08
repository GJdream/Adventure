//
//  RiddleViewController.m
//  Adventure
//
//  Created by Yash Varma on 1/8/14.
//
//

#import "RiddleViewController.h"

@interface RiddleViewController ()
{
    __weak IBOutlet UIButton *anotherJoke;
    __weak IBOutlet UIButton *findAWayOutOfTheOffice;
    __weak IBOutlet UITextField *answerField;    
    __weak IBOutlet UILabel *answerVerification;
    __weak IBOutlet UITextView *riddleQuestion;
    __weak IBOutlet UIButton *checkAnswer;
  
}

@end

@implementation RiddleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}
- (IBAction)checkAnswer:(id)sender
{
    [self.view endEditing:YES];
    if ([[answerField.text lowercaseString] rangeOfString:@"teeth"].location == NSNotFound) {
        answerVerification.text = @"No!";
    } else {
        answerVerification.text = @"Yes it's right!";
        anotherJoke.alpha = 1;
        findAWayOutOfTheOffice.alpha = 1;
        riddleQuestion.alpha = 0;
        answerField.alpha = 0;
        checkAnswer.alpha = 0;
    }
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
