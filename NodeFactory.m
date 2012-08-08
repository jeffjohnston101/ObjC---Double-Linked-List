//
//  NodeFactory.m
//  DoubleLinkList
//
//  Created by Jeffrey Johnston on 9/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NodeFactory.h"


@implementation NodeFactory

@synthesize nodeCount;




/*
 Allocates and initializes nodes
 nodeCount = number of nodes created
*/
-(Node *) createNode
{
	Node *newNode = [Node new];
	nodeCount++; 
	return newNode;
}


// Method releases the nodes ceated in the above
// method when called from Node.m
//
// Method then sets the node pointer to nil and reduces
// the node count.
-(void) releaseNode: (Node *) deadNode
{
	[deadNode release];
	deadNode = nil;
	nodeCount--;
}




@end
