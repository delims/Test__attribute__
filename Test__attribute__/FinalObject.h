//
//  FinalObject.h
//  Test __attribute__
//
//  Created by delims on 2019/5/16.
//  Copyright © 2019 delims. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


////声明为一个最终类，不能再被被继承
//
//__attribute__((objc_subclassing_restricted))
@interface FinalObject : NSObject

//子类复写父类这个方法时，子类必须调用父类的的方法。不调用会警告但不报错。
- (void)func __attribute__((objc_requires_super));
- (void)func2 NS_REQUIRES_SUPER;//Foundation已经定义好了这个宏定义

@end

NS_ASSUME_NONNULL_END
//Cannot subclass a class that was declared with the 'objc_subclassing_restricted' attribute
@interface SubObject : FinalObject

@end
