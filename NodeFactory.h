//
//  NodeFactory.h
//  DoubleLinkList
//
//  Created by Jeffrey Johnston on 9/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Node.h"


@interface NodeFactory : NSObject {

	int nodeCount;
	
}

@property int nodeCount;

//Method declaration for releaseNode
//Takes a pointer to the node to be released
-(void) releaseNode: (Node *) deadNode;


//Method declaration for createNode
//Returns a pointer to the created node
-(Node *) createNode;



@end
