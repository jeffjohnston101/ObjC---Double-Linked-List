//
//  List.m
//  DoubleLinkList
//
//  Created by Jeffrey Johnston on 9/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "List.h"


@implementation List


//Allow accessors for head 
@synthesize head;


//Prints nodes starting with the head
//and moving down the list.  It calls
//the print method in Node for the print 
//format.
-(void) print
{
	Node *p = head;
	while (p != 0) 
		{
			[p print];
			p = p.next;
		}
}


//Method to put nodes into the list starting
//at the back and adding to the front
-(void) addNode: (Node *) inNode
{
	// Retain nodes pointers in the dList since
	// the nodes will be released immediately after
	// they are put into the list sucessfully by 
	// Node.m addNode call
	[inNode retain];
	
	if( head == 0 )
	{
		head = inNode;
		[inNode setNext: 0];
		[inNode setPrev: 0];
	}
	else 
	{
		[inNode setNext: head];
		[head setPrev: inNode];
		[inNode setPrev: 0];
		head = inNode;
	}
}


// Method to locating nodes in the list based on 
//their character value.  Once found, it returns a
//pointer to the node.
-(Node *) locateNodeByChar: (char) lookupChar
{
	Node *currentNode = head; 
	while (currentNode.c != lookupChar && currentNode != NULL) 
		{
			currentNode = currentNode.next;
		}
	return currentNode;
}


// Method to remove nodes from the list.  It will check to 
// see if the node is in the list and/or if it is the head 
// first, then it will re-set the node pointers so they 
// maintain consistent links.
// 
-(void) removeNodeFromList: (Node *) removeNode
{	
	
	// Check to see if node to be removed is the head
	if (removeNode.prev == NULL && removeNode == head)
		{
			Node *temp = head;
			temp.next.prev = NULL;
			head = temp.next;
			//temp.release;
		}

	if (removeNode.next != NULL) 
		{
			removeNode.next.prev = removeNode.prev;
		}
	
	if (removeNode.prev != NULL)
		{
			removeNode.prev.next = removeNode.next;
		}
	
	if (removeNode.next != NULL && removeNode.prev != NULL)
		{
			[removeNode release];
		}
	
}



//Method to sort the list from smallest Morse code value
//to the largest.  Method will swap the pointers for the nodes
//and leave the data intact.
-(void) sortList
{
	Node *cn;
	Node *cnn;
	BOOL swap = FALSE;
	
	while (!swap) 
	{
		swap = TRUE;
		cn = head;
		cnn = head.next;
		
		while (cn.next != NULL)
		{
			if (cn.value > cnn.value) 
			{
				swap = FALSE;
				
				if(cn.prev == NULL)
				{
					Node *temp = head;
					temp.next.prev = NULL;
					head = temp.next;
					cn.next = cnn.next;
					cnn.prev = cn.prev;
					cnn.next.prev = cn;
					cn.prev = cnn;
					cnn.next = cn;
					
				}
				
				else 
				{	
					cn.next = cnn.next;
					cnn.prev = cn.prev;
					cn.prev.next = cnn;  
					cnn.next.prev = cn;
					cn.prev = cnn;
					cnn.next = cn;
				}
			}
			cn = cn.next;
			cnn = cn.next;
		}
	}
}







//Method to clean out the pointer to nodes 
//that were retained in the dList from List.m
//Currently, this is getting called correctly 
//from main, but doesn't seem to release the 
//pointers.  Have a post in on the forums for
//help.  It's exactly as it was demo'd in class,
//so I'm not sure why it's not working.
//
//I beleive it's because List.m is not creating the list
//and therefore doesn't own the rights to release here
-(void) freeList;
{
	Node *p = head;	
	while (p != 0) 
	{
		Node *s = p;
		p = p.next;
		[s release];
		s = nil;
	}
	head = 0;
}

@end


	
	








