# UIActionSheet-SBNCBlockConfig
用更简洁的方式调用 UIActionSheet，支持多个按钮，action 用 block 配置。最低兼容至 iOS 7.

示例代码：
```
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
```
