//
//  List.h
//  DoubleLinkList
//
//  Created by Jeffrey Johnston on 9/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Node.h"
//#import "NodeFactory.h"


// Interface for the List.m 
// Declares the head pointer for our DLL
@interface List : NSObject 
{
	Node *head;
}

// dynamic, assign 
@property (nonatomic, assign) Node *head;


// Method declaration for print
-(void) print;

// Method declaration for addNode
// Takes a node pointer
-(void) addNode: (Node *) inNode;


// Method declaration for locateNodeByChar
// Takse a char and returns a pointer to the 
// associated node
-(Node *) locateNodeByChar: (char) lookupChar;


// Method declaration for removeNodeFromList
// Takes a node pointer
-(void) removeNodeFromList: (Node *) removeNode;


// Method declaration for sortList
-(void) sortList;

// Method declaration for freeList
-(void) freeList;



@end
