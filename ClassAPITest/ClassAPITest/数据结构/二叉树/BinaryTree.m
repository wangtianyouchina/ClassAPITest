//
//  BinaryTree.m
//  ClassAPITest
//
//  Created by 王天佑 on 2018/4/12.
//  Copyright © 2018年 xiaomaguohe. All rights reserved.
//

#import "BinaryTree.h"
@implementation BinaryTreeNode
-(instancetype)initWithData:(id)data {
    self = [super init];
    if (self) {
        self.data = data;
        
    }
    return self;
}
@end


@interface BinaryTree()
{
    BOOL _stop;
}

@property(nonatomic,strong) BinaryTreeNode *rootNode;
@property(nonatomic,assign,readwrite) NSInteger count; // 结点个数
@property(nonatomic,assign,readwrite) NSInteger height;//深度
@end
@implementation BinaryTree

-(NSInteger)count {
    
    __block NSInteger nodeCount = 0;
    [self enumerateObjectsWithOptions:BinaryEnumerationOptionFront usingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        nodeCount ++;
    }];
    return nodeCount;
}


-(instancetype)initWithDataArray:(NSArray *)dataArray {

    NSMutableArray *mutArray = [@[] mutableCopy];
    for (id data in dataArray) {
        BinaryTreeNode *node = [[BinaryTreeNode alloc] initWithData:data];
        [mutArray addObject:node];
    }
    return [self initWithNodeArray:mutArray.copy];
}

-(instancetype)initWithFrontDataArray:(NSArray *)frontArray midDataArray:(NSArray *)midArray {
    NSMutableArray *frontMuArray = [@[] mutableCopy];
    NSMutableArray *midMuArray = [@[] mutableCopy];
    for (id data in frontArray) {
        BinaryTreeNode *node = [[BinaryTreeNode alloc] initWithData:data];
        [frontMuArray addObject:node];
    }
    for (id data in midArray) {
        BinaryTreeNode *node = [[BinaryTreeNode alloc] initWithData:data];
        [midMuArray addObject:node];
    }

    
    return [self initWithFrontArray:frontMuArray.copy midArray:midMuArray.copy];
}

    
-(instancetype)initWithFrontArray:(NSArray *)frontArray midArray:(NSArray *)midArray {
    self = [super init];
    if (self) {
        
       self.rootNode = [self rebuildBinartTreeWithFrontArray:frontArray midArray:midArray];
    }
    return self;
    
}

-(BinaryTreeNode *)rebuildBinartTreeWithFrontArray:(NSArray *)frontArray midArray:(NSArray *)midArray {
    if (frontArray.count != midArray.count) {
        NSAssert(YES, @"参数有误");
    }
    if (frontArray.count == 0 || midArray.count == 0) {
        return nil;
    }
    BinaryTreeNode *node = [frontArray firstObject];
    if (frontArray.count == 1) {
        return node;
    }
    NSArray *leftFronArray = nil;
    NSArray *leftMidArray = nil;
    NSArray *rightFronArray = nil;
    NSArray *rightMidArray = nil;

        //
    // 在中序遍历 到到 根结点的位置
    
    NSInteger rootIndexAtMid = 0;
    // 在中序遍历 找到 根结点后的一个结点
    BinaryTreeNode *rootNextNode = nil;
    
    for (int i = 0; i < midArray.count; i ++) {
        BinaryTreeNode *obj = midArray[i];
        if ([obj.data isEqual:node.data]) {
            rootIndexAtMid = i;
            if (i+1 < midArray.count) {
                rootNextNode = midArray[i+1];
            }
        }
    }

    if (rootNextNode == nil) {
        leftFronArray = [frontArray subarrayWithRange:NSMakeRange(1, frontArray.count-1)];
        rightFronArray = nil;
    }
    else {
        NSInteger frontRightIndex = 0;
        // 在前序遍历中打到 右 前第一个的index
        for (int i = 0; i < midArray.count; i ++) {
            BinaryTreeNode *obj = midArray[i];
            if ([obj.data isEqual:rootNextNode.data]) {
                frontRightIndex = i;
            }
        }
        leftFronArray = [frontArray subarrayWithRange:NSMakeRange(1, frontRightIndex)];
        rightFronArray = [frontArray subarrayWithRange:NSMakeRange(frontRightIndex, frontArray.count-frontRightIndex)];

    }
    
    // 在中序 中打到 左中序
    leftMidArray = [midArray subarrayWithRange:NSMakeRange(0, rootIndexAtMid)];
    if (rootIndexAtMid == midArray.count-1) {
        rightMidArray = nil;
    }
    else {
        rightMidArray = [midArray subarrayWithRange:NSMakeRange(rootIndexAtMid, midArray.count-rootIndexAtMid-1)];
    }
    
    node.leftNode =  [self rebuildBinartTreeWithFrontArray:leftFronArray midArray:leftMidArray];
    node.rightNode =  [self rebuildBinartTreeWithFrontArray:rightFronArray midArray:rightMidArray];
    return node;
}
// 完全二叉树 给层遍历 --> 二叉树
-(instancetype)initWithNodeArray:(NSArray *)nodeArray {
    self = [super init];
    if (self) {
        // 0 --root left 2*i + 1  :right 2*i + 2   n/2 - 1/2 <m < n/2 - 1  --->  [n/2] -1/2 < n/2 - 1/2
        for (int i = 0;i < nodeArray.count;i++) {                                    // [n/2] < m + 1/2 < n/2 -1/2
            BinaryTreeNode *node = nodeArray[i];
            if (i == 0) {
                self.rootNode = node;
            }
            else if (i % 2 != 0) {
                NSInteger pIndex = (i-1 )/ 2;
                BinaryTreeNode *pNode = nodeArray[pIndex];
                pNode.leftNode = node;
            }
            else {
                NSInteger pIndex = (i-1) / 2;
                BinaryTreeNode *pNode = nodeArray[pIndex];
                pNode.rightNode = node;

            }
        }
    }
    return self;
}

-(void)enumerateObjectsWithOptions:(BinaryEnumerationOptions)opts usingBlock:(void (^)(id, NSUInteger, BOOL *))block {
    
    if (opts == BinaryEnumerationOptionFront) {
        _stop = NO;
        [self enumerateTreeRootNode:self.rootNode Options:opts usingBlock:block];
    }
}
//
-(void)enumerateTreeRootNode:(BinaryTreeNode *)rootNode Options:(BinaryEnumerationOptions)opts usingBlock:(void (^)(id, NSUInteger, BOOL *))block {
    
    if (_stop == YES) {
        return;
    }
    
    block(rootNode,0,&_stop);
    
    if (rootNode.leftNode != nil) {
        [self enumerateTreeRootNode:rootNode.leftNode Options:BinaryEnumerationOptionFront usingBlock:block];
    }
    if (rootNode.rightNode != nil) {
        [self enumerateTreeRootNode:rootNode.rightNode Options:BinaryEnumerationOptionFront usingBlock:block];
    }
}
@end
// 二叉排序树
@implementation SortedBinaryTree

@end
// 完全二叉树
@implementation CompletelyBinaryTree
@end


