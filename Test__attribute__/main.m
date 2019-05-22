//
//  main.m
//  Test __attribute__
//
//  Created by delims on 2019/5/16.
//  Copyright © 2019 delims. All rights reserved.
//

#import <Foundation/Foundation.h>

//aligned 字节对齐
struct student {
    char sex;
    int length;
    char name[3];
    char value[15];
} __attribute__((aligned (8)));  //用于内存对齐,只能传入2的N次方，传1，2，4以4字节对齐。传8是8字节对齐。

//always_inline 声明为内敛函数

__attribute__ ((always_inline)) void inlineFunction()
{
    NSLog(@"这是一个内联函数");
}

__attribute__((constructor))
static void beforeMain(void)
{
    NSLog(@"beforeMain");
}

__attribute__((destructor))
static void afterMain()
{
    NSLog(@"afterMain");
}


int main(int argc, const char * argv[]) {
    NSLog(@"执行main");
    @autoreleasepool {
        
        struct student my_student;
        
        NSLog(@"%lu",sizeof(my_student));
        NSLog(@"\n--%p\n--%p\n--%p\n--%p\n--%p\n--%p",
              &my_student,
              &my_student.sex,
              &my_student.length,
              &my_student.name,
              &my_student.value,
              &my_student.value[15]
              );

        inlineFunction();
        
        NSObject *obejct = [[NSObject alloc] init];
        
    

        NSLog(@"%@", [obejct init]);
        NSLog(@"%@", [obejct init]);
        NSLog(@"%@", [obejct init]);
        

        
        
    }
    return 0;
}
