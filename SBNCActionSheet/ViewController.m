//
//  ViewController.m
//  SBNCActionSheet
//
//  Created by Jymn_Chen on 2016/10/31.
//  Copyright © 2016年 com.jymnchen. All rights reserved.
//

#import "ViewController.h"
#import "UIActionSheet+SBNCBlockConfig.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SBNCActionSheetItem *confirmItem = [[SBNCActionSheetItem alloc] initWithTitle:@"确定" action:^{
        NSLog(@"确定");
    } isConfirmItem:YES];
    SBNCActionSheetItem *cancelItem = [[SBNCActionSheetItem alloc] initWithTitle:@"取消" action:^{
        NSLog(@"取消");
    } isCancelItem:YES];
    SBNCActionSheetItem *otherItem = [[SBNCActionSheetItem alloc] initWithTitle:@"占位的" action:^{
        NSLog(@"占位的");
    } isCancelItem:NO];
    UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:@"这是个 action sheet" items:@[confirmItem, otherItem, cancelItem]];
    [sheet showInView:self.view];
}

@end
