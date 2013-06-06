//
//  APRAddViewController.h
//  TablaMVC
//
//  Created by Albert  on 06/06/13.
//  Copyright (c) 2013 Albert Pages. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "APRContacto.h"

@protocol APRAddViewControllerDelegate 

-(void)salvar:(APRContacto *) contacto;

@end

@interface APRAddViewController : UIViewController <UITextFieldDelegate>

@property (strong) id<APRAddViewControllerDelegate> delegado;

@property (weak, nonatomic) IBOutlet UITextField *txtNombre;

@property (weak, nonatomic) IBOutlet UITextField *txtEmail;

@property (weak, nonatomic) IBOutlet UITextField *txtTel;


- (IBAction)salvar:(id)sender;
- (IBAction)cancelar:(id)sender;


@end
