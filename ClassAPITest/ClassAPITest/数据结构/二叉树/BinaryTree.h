//
//  BinaryTree.h
//  ClassAPITest
//
//  Created by 王天佑 on 2018/4/12.
//  Copyright © 2018年 xiaomaguohe. All rights reserved.
//


#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    BinaryEnumerationOptionFront,
    BinaryEnumerationOptionMid,
    BinaryEnumerationOptionBack,
    BinaryEnumerationOptionLayer,
} BinaryEnumerationOptions;

@interface BinaryTreeNode : NSObject
-(instancetype)initWithData:(id)data;
@property(nonatomic,strong) id data;
@property(nonatomic,strong) BinaryTreeNode *leftNode;
@property(nonatomic,strong) BinaryTreeNode *rightNode;

@end



@interface BinaryTree : NSObject
// 前 中 --> tree
-(instancetype)initWithFrontDataArray:(NSArray *)frontArray midDataArray:(NSArray *)midArray;
//完全二叉树 层遍历
-(instancetype)initWithDataArray:(NSArray *)dataArray;//创建

-(void)dealloc;//销毁
-(BinaryTreeNode *)rootNode;

@property(nonatomic,assign,readonly) NSInteger count; // 结点个数
@property(nonatomic,assign,readonly) NSInteger height;//深度
@property(nonatomic,assign,readonly) NSInteger n0Count;//度为0
@property(nonatomic,assign,readonly) NSInteger n1Count;//度为1
@property(nonatomic,assign,readonly) NSInteger n2Count;//度为2

@end
@interface BinaryTree (ExtendedBinaryTree)

// 排序 成有序二叉树
- (NSArray *)sortedTreeUsingComparator:(NSComparator NS_NOESCAPE)cmptr;


-(BinaryTreeNode *)addNodeWithData:(id)data;
-(void)deleteNodeWithData:(id)data;
-(void)changeNodeNode:(id)data newData:(id)data;
-(void)insertNodeData:(id)data toLeftChild:(BinaryTreeNode *)node;

// 遍历
- (void)enumerateObjectsWithOptions:(BinaryEnumerationOptions)opts usingBlock:(void (NS_NOESCAPE ^)(id obj, NSUInteger idx, BOOL *stop))block;
/**
 *  二叉树中某个位置的节点（按层次遍历）
 *
 *  @param index    按层次遍历树时的位置(从0开始算)
 *  @param rootNode 树根节点
 *
 *  @return 节点
 */
- (BinaryTreeNode *)treeNodeAtIndex:(NSInteger)index;
//最大距离
-(NSInteger)maxDistanceOfTree:(BinaryTreeNode *)rootNode;
/**
 *
 *  二叉树中某个节点到根结点的 路径
 */
- (NSArray *)pathOfTreeNode:(BinaryTreeNode *)treeNode;
//二叉树中两个节点之间的路径
- (NSArray *)pathFromNode:(BinaryTreeNode *)nodeA toNode:(BinaryTreeNode *)nodeB;
/**
 * 二个节点 最近的公共父结点
 */
- (BinaryTreeNode *)parentOfNode:(BinaryTreeNode *)nodeA andNode:(BinaryTreeNode *)nodeB;
//  二叉树两个节点之间的距离

- (NSInteger)distanceFromNode:(BinaryTreeNode *)nodeA toNode:(BinaryTreeNode *)nodeB;
// 翻转二叉树
- (void)reverseBinaryTree;
/*
 * 1.二叉树的创建
 * 2.二叉树的销毁
 * 3.二叉树的 增 删 改 查
 * 4.二叉树的遍历 前 中 后 层
 * 5.二叉树的属性: count(结点总数) 边数 度(0 1 2)的个数 深度(层数)
 */
/*
 1. 求二叉树中的节点个数
 2. 求二叉树的深度
 3. 前序遍历，中序遍历，后序遍历
 4.分层遍历二叉树（按层次从上往下，从左往右）
 5. 将二叉查找树变为有序的双向链表
 6. 求二叉树第K层的节点个数
 7. 求二叉树中叶子节点的个数
 8. 判断两棵二叉树是否结构相同
 9. 判断二叉树是不是平衡二叉树
 10. 求二叉树的镜像
 11. 求二叉树中两个节点的最低公共祖先节点
 12. 求二叉树中节点的最大距离
 13. 由前序遍历序列和中序遍历序列重建二叉树
 14.判断二叉树是不是完全二叉树
 */

@end
@interface BinaryTree (BinaryTreeCreation)
+(instancetype)binaryTree;
@end
// 二叉排序树
@interface SortedBinaryTree:BinaryTree

@end
// 完全二叉树
@interface CompletelyBinaryTree:BinaryTree
@end
