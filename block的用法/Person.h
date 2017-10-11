//
//  Person.h
//  block的用法
//
//  Created by 牛清旭 on 2017/10/11.
//  Copyright © 2017年 牛清旭. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^myblock)(NSString *str);

@interface Person : NSObject
// 1 . Block作为对象的属性:
@property (nonatomic,copy) myblock myblock;

// 2.  Block作为方法的参数：

- (void)saySomething:(myblock)block;

// 3. Block作为返回值：

- (myblock)sayhello;
@end
