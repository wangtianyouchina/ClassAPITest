//
//  TreadManager.m
//  ClassAPITest
//
//  Created by 王天佑 on 2021/4/28.
//  Copyright © 2021 xiaomaguohe. All rights reserved.
//

#import "ThreadManager.h"

@interface ThreadManager ()

@property (atomic, strong) NSLock *lock;
@property (nonatomic, strong) dispatch_semaphore_t semaphore;
@property (nonatomic, strong) NSMutableArray *blocks;
@property (nonatomic, strong) NSThread *thread;

@end

@implementation ThreadManager

+ (instancetype)shareInstance{
    static dispatch_once_t onceToken;
    static ThreadManager *manager = nil;
    dispatch_once(&onceToken, ^{
        manager = [ThreadManager new];
    });
    return manager;
}

- (instancetype)init{
    if (self = [super init]) {
        //5 not 6
        _semaphore = dispatch_semaphore_create(5);
        _lock = [[NSLock alloc] init];
        _blocks = [NSMutableArray array];
        _thread = [[NSThread alloc] initWithTarget:self selector:@selector(testRun) object:nil];
        [_thread start];
    }
    return  self;
}

- (void)testRun{
    [[NSRunLoop currentRunLoop] addPort:[NSPort port] forMode:NSDefaultRunLoopMode];
    [[NSRunLoop currentRunLoop] run];
}

- (void)asynBlock:(dispatch_block_t)block{
    NSLog(@"asynBlock begin");
    [self.lock lock];
    [_blocks addObject:block];
    [self.lock unlock];
    
    [self performSelector:@selector(excuteBlock) onThread:self.thread withObject:nil waitUntilDone:NO];

    NSLog(@"asynBlock block end");
    

}


- (void)excuteBlock{
    [self.lock lock];
    if (_blocks.count > 0) {
        dispatch_block_t block = [_blocks firstObject];
        [_blocks removeObjectAtIndex:0];
        [self doBlock:block];
    }
    [self.lock unlock];
}

- (void)doBlock:(dispatch_block_t)block{
    dispatch_semaphore_wait(self.semaphore, DISPATCH_TIME_FOREVER);
//    [NSThread detachNewThreadWithBlock:^{
//        block();
//        dispatch_semaphore_signal(self.semaphore);
//    }];
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        block();
        dispatch_semaphore_signal(self.semaphore);
    });
}

@end
