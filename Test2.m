//
//  Test2.m
//  DoubleLinkList
//
//  Created by Jeffrey Johnston on 9/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Test2.h"


@implementation Test2

/*
Method takes the DLL, looks for the specific node
using the locateNodeByChar method in List.m
Removing selected nodes is handled by the removeNodeFromList
method in List.m
Finally, it prints the list with specific nodes removed by calling
the print method on myList.
*/

+(void) test2: (List *) myList
{
	NSLog(@"\n\n\n");
	NSLog(@"--- Printing DLL with Select Nodes Removed ---\n");
	[myList removeNodeFromList:[myList locateNodeByChar: 'F']];
	[myList removeNodeFromList:[myList locateNodeByChar: 'R']];
	[myList removeNodeFromList:[myList locateNodeByChar: 'B']];
	[myList removeNodeFromList:[myList locateNodeByChar: 'Z']];
	[myList removeNodeFromList:[myList locateNodeByChar: 'A']];
	[myList removeNodeFromList:[myList locateNodeByChar: 'M']];
	[myList removeNodeFromList:[myList locateNodeByChar: 'G']];
	[myList removeNodeFromList:[myList locateNodeByChar: 'R']];
	[myList removeNodeFromList:[myList locateNodeByChar: 'C']];
	[myList removeNodeFromList:[myList locateNodeByChar: 'Q']];
	[myList removeNodeFromList:[myList locateNodeByChar: 'Y']];
	[myList removeNodeFromList:[myList locateNodeByChar: 'C']];
	[myList removeNodeFromList:[myList locateNodeByChar: 'N']];
	
	[myList print];	
}


@end
