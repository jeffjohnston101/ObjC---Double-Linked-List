//
//  Node.m
//  DoubleLinkList
//
//  Created by Jeffrey Johnston on 9/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//


#import "Node.h"
#import "List.h"
#import "NodeFactory.h"



@implementation Node



// Synthesizing variables to allow get and set calls
@synthesize name;
@synthesize next;
@synthesize prev;
@synthesize c;
@synthesize value;


//Method to generate nodes.  This method creates an instance of
//my NodeFactory class, then creates pointers to node, calls the createNode
//method in NodeFactory to alloc/init the nodes.  Then, it calls popNode
//in to pass in data to the node.  Next, it places a pointer to the node
//in our DLL.  Last, but importantly, it sends the pointer back to the 
//NodeFactory where it is then released.  The addNode method call 
//includea a retain call on each node pointer so we continue to be
//able to work with the nodes.
+(List *) generateNodes: (List *) dList 
{
	
	NodeFactory *factory = [NodeFactory new];
	
	Node *n1 = [factory createNode];
	[n1   popNode: 2211 : 'Z' : @"Z_Node"];
	[dList addNode:	n1];
	[factory releaseNode: n1];
	
	Node *n2 = [factory createNode];
	[n2   popNode: 2122 : 'Y' : @"Y_Node" ];
	[dList addNode:	n2];
	[factory releaseNode: n2];
	
	Node *n3 = [factory createNode];
	[n3   popNode: 2112 : 'X' : @"X_Node" ];
	[dList addNode:	n3];
	[factory releaseNode: n3];
	
	Node *n4 = [factory createNode];
	[n4   popNode: 122  : 'W' : @"W_Node" ];
	[dList addNode:	n4];
	[factory releaseNode: n4];
	
	Node *n5 = [factory createNode];
	[n5   popNode: 1112 : 'V' : @"V_Node" ];
	[dList addNode:	n5];
	[factory releaseNode: n5];
	
	Node *n6 = [factory createNode];
	[n6   popNode: 112  : 'U' : @"U_Node" ];
	[dList addNode:	n6];
	[factory releaseNode: n6];
	
	Node *n7 = [factory createNode];
	[n7   popNode: 2    : 'T' : @"T_Node" ];
	[dList addNode:	n7];
	[factory releaseNode: n7];
	
	Node *n8 = [factory createNode];
	[n8   popNode: 111  : 'S' : @"S_Node" ];
	[dList addNode:	n8];
	[factory releaseNode: n8];
	
	Node *n9 = [factory createNode];
	[n9   popNode: 121  : 'R' : @"R_Node" ];
	[dList addNode:	n9];
	[factory releaseNode: n9];
	
	Node *n10 = [factory createNode];
	[n10   popNode: 2212 : 'Q' : @"Q_Node" ];
	[dList addNode:	n10];
	[factory releaseNode: n10];
	
	Node *n11 = [factory createNode];
	[n11   popNode: 1221 : 'P' : @"P_Node" ];
	[dList addNode:	n11];
	[factory releaseNode: n11];
	
	Node *n12 = [factory createNode];
	[n12   popNode: 222  : 'O' : @"O_Node" ];
	[dList addNode:	n12];
	[factory releaseNode: n12];
	
	Node *n13 = [factory createNode];
	[n13   popNode: 21   : 'N' : @"N_Node" ];
	[dList addNode:	n13];
	[factory releaseNode: n13];
	
	Node *n14 = [factory createNode];
	[n14   popNode: 22   : 'M' : @"M_Node" ];
	[dList addNode:	n14];
	[factory releaseNode: n14];
	
	Node *n15 = [factory createNode];
	[n15   popNode: 1211 : 'L' : @"L_Node" ];
	[dList addNode:	n15];
	[factory releaseNode: n15];
	
	Node *n16 = [factory createNode];
	[n16   popNode: 212  : 'K' : @"K_Node" ];
	[dList addNode:	n16];
	[factory releaseNode: n16];
	
	Node *n17 = [factory createNode];
	[n17   popNode: 1222 : 'J' : @"J_Node" ];
	[dList addNode:	n17];
	[factory releaseNode: n17];
	
	Node *n18 = [factory createNode];
	[n18   popNode: 11   : 'I' : @"I_Node" ];
	[dList addNode:	n18];
	[factory releaseNode: n18];
	
	Node *n19 = [factory createNode];
	[n19   popNode: 1111 : 'H' : @"H_Node" ];
	[dList addNode:	n19];
	[factory releaseNode: n19];
	
	Node *n20 = [factory createNode];
	[n20   popNode: 221  : 'G' : @"G_Node" ];
	[dList addNode:	n20];
	[factory releaseNode: n20];
	
	Node *n21 = [factory createNode];
	[n21   popNode: 1121 : 'F' : @"F_Node" ];
	[dList addNode:	n21];
	[factory releaseNode: n21];
	
	Node *n22 = [factory createNode];
	[n22   popNode: 1    : 'E' : @"E_Node" ];
	[dList addNode:	n22];
	[factory releaseNode: n22];
	
	Node *n23 = [factory createNode];
	[n23   popNode: 211  : 'D' : @"D_Node" ];
	[dList addNode:	n23];
	[factory releaseNode: n23];
	
	Node *n24 = [factory createNode];
	[n24   popNode: 2121 : 'C' : @"C_Node" ];
	[dList addNode:	n24];
	[factory releaseNode: n24];
	
	Node *n25 = [factory createNode];
	[n25   popNode: 2111 : 'B' : @"B_Node" ];
	[dList addNode:	n25];
	[factory releaseNode: n25];
	
	Node *n26 = [factory createNode];
	[n26   popNode: 12   : 'A' : @"A_Node" ];
	[dList addNode:	n26];
	[factory releaseNode: n26];
	
	[factory release];
	
	return dList;
}





// Method populates the node with the appropriate values
-(void) popNode: (int) inValue: (char) inC: (NSString *) inName
{
	value = inValue;
	c = inC;
	name = inName;
}




// Method to print node contents to the screen in a readable 
// format.
-(void) print
{
	NSLog(@"  Character:		%c", c);
	NSLog(@"  Morse Value:	    %d", value);
	NSLog(@"  Next Node:		%@", next.name);
	NSLog(@"  Prev Node:		%@", prev.name);
	NSLog(@" ");	
}




@end
