//
//  APRTableViewController.m
//  TablaMVC
//
//  Created by Albert  on 06/06/13.
//  Copyright (c) 2013 Albert Pages. All rights reserved.
//

#import "APRTableViewController.h"
#import "APRContacto.h"
#import "APRDetalleViewController.h"
@interface APRTableViewController ()

@end

@implementation APRTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.modelo = [NSMutableArray new];
    
    APRContacto * c1 = [[APRContacto alloc] initWithNombre:@"Nombre1" email:@"Email1" telefono:@"Telefono1"];
    APRContacto * c2 = [[APRContacto alloc] initWithNombre:@"Nombre2" email:@"Email2" telefono:@"Telefono2"];
    APRContacto * c3 = [[APRContacto alloc] initWithNombre:@"Nombre3" email:@"Email3" telefono:@"Telefono3"];
    APRContacto * c4 = [[APRContacto alloc] initWithNombre:@"Nombre4" email:@"Email4" telefono:@"Telefono4"];
    
     [self.modelo addObject:c1];
     [self.modelo addObject:c2];
     [self.modelo addObject:c3];
     [self.modelo addObject:c4];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return self.modelo.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    APRContacto * c =[self.modelo objectAtIndex:indexPath.row];
    cell.textLabel.text = c.nombre;
    // Configure the cell...
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard * stb = [UIStoryboard storyboardWithName:@"Storyboard" bundle:nil];
    APRDetalleViewController * c = [stb instantiateViewControllerWithIdentifier:@"detalle"];
    c.contacto = [self.modelo objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:c animated:YES];
}

- (IBAction)addContacto:(id)sender {
    UIStoryboard * stb = [UIStoryboard storyboardWithName:@"Storyboard" bundle:nil];
    APRAddViewController * c = [stb instantiateViewControllerWithIdentifier:@"add"];
    c.delegado = self;
    [self presentViewController:c animated:YES completion:nil];

}
#pragma mark - Add View Controller Delegate

-(void)salvar:(APRContacto *)contacto{
    [self.modelo addObject:contacto];
    [self.tableView reloadData];
}

@end
