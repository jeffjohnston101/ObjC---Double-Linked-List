//
//  Test3.m
//  DoubleLinkList
//
//  Created by Jeffrey Johnston on 9/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Test3.h"


@implementation Test3



//Method to sort the list and print.
//Returns a void and takes a point to a list
//Calls the sortList method in Node.m
//Then calls print on myList 
+(void) test3: (List *) myList
{
	[myList sortList];
	NSLog(@"\n\n\n");
	NSLog(@"--- Printing Sorted DLL ---\n");
	
	[myList print];

}






@end
