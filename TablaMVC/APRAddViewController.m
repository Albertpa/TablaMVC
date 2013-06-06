//
//  APRAddViewController.m
//  TablaMVC
//
//  Created by Albert  on 06/06/13.
//  Copyright (c) 2013 Albert Pages. All rights reserved.
//

#import "APRAddViewController.h"

@interface APRAddViewController ()

@end

@implementation APRAddViewController

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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)salvar:(id)sender {
    APRContacto * c = [[APRContacto alloc] initWithNombre:self.txtNombre.text email:self.txtEmail.text telefono:self.txtTel.text];
    
    [self.delegado salvar:c];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)cancelar:(id)sender {
     [self dismissViewControllerAnimated:YES completion:nil];
}


-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}
@end
