PriorityQueue-ObjC
==================

A PriorityQueue for Objective-C/iOS Developers

How to use it:
-------------

Note: see the `main.m` file in the project root for running examples.

### Create your queue

```objective-c
PriorityQueue* queue = [PriorityQueue new];
```

Or create the queue with a specific capacity:
```objective-c
PriorityQueue* queue = [[PriorityQueue alloc] initWithCapacity:100];
```

### Setting a custom comparator

Note: This is only relevant if you are working with custom objects. Things like NSNumber will work without setting a custom comparator.

If you will be working with custom objects you'll need to set a custom comparator so that the PriorityQueue knows how to order your objects when added to the queue.

To set the comparator do the following:

```objective-c
queue.comparator = ^NSComparisonResult(id<NSObject> obj1, id<NSObject> obj2) {
    /**
     * Do you custom comparison here and return one of the following...
     *
     * NSOrderedAscending
     * NSOrderedDescending
     * NSOrderedSame
     */
};
```

### Queue mutation

Adding objects is as simple as:
```objective-c
[queue add:someObject];
```

Removing objects is just as simple:
```objective-c
[queue remove:someObject];
```

You can also clear the entire queue with:
```objective-c
[queue clear];
```

### Object retrieval

There are two ways to get the HEAD of the queue, `peek` and `poll`. `peek` will return the HEAD of the queue but will not remove the object from the queue. `poll` will both return the HEAD of the queue and also remove that object from the queue.

```objective-c
// After calling 'peek' the 'object' returned will persist in the queue
id<NSObject> object = [queue peek];
```

```objective-c
// After calling 'poll' the 'object' returned will be removed from the queue
id<NSObject> object = [queue poll];
```

### Convenience methods

There are few convenience methods that can help with certain tasks. They are as follows:

```objective-c
/**
 * Can be used to determine if the queue is empty.
 *
 * @return YES if the queue is empty. NO if the queue is not empty.
 */
- (BOOL)isEmpty;

/**
 * Can be used to determine if an object already exists in the queue.
 *
 * @return YES if the object exists in the queue. NO if the object does not exist in the queue.
 */
- (BOOL)contains:(id<NSObject>)object;

/**
 * Can be used to determine the number of objects in the queue.
 *
 * @return The number of objects in the queue.
 */
- (NSUInteger)size;

/**
 * Creates and returns an NSArray from the contents of the queue.
 *
 * @return An array of all elements in the queue.
 */
- (NSArray*)toArray;
```

License
-------
Copyright (c) 2012 Jeremy Fox ([jeremyfox.me](http://www.jeremyfox.me)). All rights reserved.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
