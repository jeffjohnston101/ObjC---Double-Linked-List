//
//  Node.h
//  DoubleLinkList
//
//  Created by Jeffrey Johnston on 9/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class List;


//Interface for Node.m  This declares the 
//variables for our nodes.  
//Pointers to the previous and next nodes.
//A pointer to the name of the node.
//The node alpha character.
//And the Morse code value.
@interface Node : NSObject 
{
	Node			*next;
	Node			*prev;
	NSString		*name;
	char			c;
	int				value;
}


// dynamic, assign
@property (nonatomic, assign)	NSString	*name;
@property (nonatomic, assign)	Node		*next;
@property (nonatomic, assign)	Node		*prev;
@property						char		c;
@property						int			value;



//Method declaration for popNode.
-(void) popNode: (int) inValue: (char) inC: (NSString *) inName;


//Method declaration for generateNodes
+(List *) generateNodes: (List *) dList; 


// Method declaration for print
-(void) print;


@end
