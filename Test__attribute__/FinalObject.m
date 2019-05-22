//
//  FinalObject.m
//  Test __attribute__
//
//  Created by delims on 2019/5/16.
//  Copyright © 2019 delims. All rights reserved.
//

#import "FinalObject.h"

@implementation FinalObject

+ (void)load
{
    NSLog(@"执行了load");
}

- (void)func
{
    
}

@end



@implementation SubObject

//如果不写父类方法就会报警告
//Method possibly missing a [super func] call
- (void)func
{
    
}


@end

