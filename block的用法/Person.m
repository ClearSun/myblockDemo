//
//  Person.m
//  block的用法
//
//  Created by 牛清旭 on 2017/10/11.
//  Copyright © 2017年 牛清旭. All rights reserved.
//

#import "Person.h"

@implementation Person


- (void)saySomething:(myblock)block{
    block(@"哈哈哈哈嗝");
}

- (myblock)sayhello{
    
    return ^(NSString *str){
        NSLog(@"hello nihao %@",str);
    };
}
@end
