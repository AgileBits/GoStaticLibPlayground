//
//  main.m
//  HelloGo
//
//  Created by Roustem Karimov on 2015-07-23.
//  Copyright (c) 2015 AgileBits. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "libgo.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        printf("\nHello, Objective-C World!\n");
        PrintWelcomeMessage();
        
        printf("%s", CustomHelloMessage("Dave"));
    }
    return 0;
}
