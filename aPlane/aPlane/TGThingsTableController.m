//
//  TGThingsTableController.m
//  aPlane
//
//  Created by 春雷 罗 on 12-7-23.
//  Copyright (c) 2012年 private. All rights reserved.
//

#import "TGThingsTableController.h"
#import "TGNormalTableVeiwCell.h"
#import "TGEditTableViewCell.h"

@interface TGThingsTableController ()

@end

@implementation TGThingsTableController

//根据数据初始化表格。
- (id)initByData:(TGThings *) things {
    self = [super init];
    if (self) {
        _things = things;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

// 设定这个Table又多少片段。
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

// 显示这个片段有多少行。
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_things.list count];
}

// 内部使用自定义的CELL来显示内容。
// 如果正常显示用Normal，如果是编辑用Editor。
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // 一般我们就可以在这开始设置这个cell了，比如设置文字等： 
    TGThing * thing = [_things.list objectAtIndex:indexPath.row];
    
    static NSString *NormalCellIdentifier = @"NormalCell";
    static NSString *EditCellIdentifier = @"EditCell";
    
    //申请一个可以复用的CELL，如果没有找到，就自己建立一个。
    TGEditTableViewCell *cell = (TGEditTableViewCell*)[tableView dequeueReusableCellWithIdentifier:NormalCellIdentifier];
    if (cell == nil) { 
        //cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle 
        //                               reuseIdentifier:CellIdentifier]; 
        //cell = [[TGNormalTableVeiwCell alloc ] init];
        cell = [[TGEditTableViewCell alloc ] init];
    } 
    
    NSDateFormatter * df = [NSDateFormatter new];
    [df setDateFormat:@"yyyy年MM月dd日 HH时mm分ss秒"];
    NSCalendar * calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDate * date = [calendar dateFromComponents:thing.datetime];
    NSString * strDate = [df stringFromDate:date];
    
    cell.lblDate.text = strDate;
    cell.txtDate.text = strDate;

    cell.lblContent.text = thing.content;
    cell.txtContent.text = thing.content;
    
    /*
    //标题文字(这个以后用来显示类型)
    cell.textLabel.text = thing.content;
    //[cell.textLabel setFont:[UIFont fontWithName:@"Georgia"size:27]];
    [cell.textLabel setTextColor:[UIColor blueColor]];
    
    //详细内容（用来显示具体的信息）
        [cell.detailTextLabel setTextColor:[UIColor blackColor]];
    
    //cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
     */
    
    return cell;
}


// 设定每行的高度。
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
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
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
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
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
