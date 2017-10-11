//
//  ViewController.m
//  block的用法
//
//  Created by 牛清旭 on 2017/10/11.
//  Copyright © 2017年 牛清旭. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Person *person = [[Person alloc] init];
    // 1 block当做属性
    person.myblock = ^(NSString *str) {
        NSLog(@"这个人笑了： %@",str);
    };
    
    person.myblock(@"哈哈哈哈");
    
    // 2.block 当做参数
    [person saySomething:^(NSString *str) {
        NSLog(@"说点什么吧： %@",str);
    }];
    
    
    // 3 block 当做返回值
    person.sayhello(@"你好");
    
}



@end
