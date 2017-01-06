//
//  main.m
//  PriorityQueue
//
//  Created by Jeremy Fox on 12/29/14.
//  Copyright (c) 2014 Jeremy Fox. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PriorityQueue.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray* objects = @[@89, @1, @2, @33, @56, @4, @5, @67, @10, @7, @9, @8, @11, @12, @13, @14, @15, @16, @17, @18, @134, @77, @31, @19, @20];
        
        PriorityQueue* queue = [PriorityQueue new];
        
        for (NSNumber* num in objects) {
            [queue add:num];
        }
        
        id<NSObject> object = [queue peek];
        
        [queue remove:@1];
        [queue remove:@3];
        [queue remove:@8];

        NSLog(@"Size: %lu", (unsigned long)queue.size);
        
        object = [queue poll];
        
        [queue add:@1];
        
        object = [queue peek];
        
        [queue add:@25];
    }
    return 0;
}
