#import <Foundation/Foundation.h>

#import "Test1.h"
#import "Test2.h"
#import "Test3.h"



int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    
    // Main method creates a List (dList)
	// then calles generateNodes method in my Node.m
	// which populates dList with nodes.  It then
	// calls the three test methods in their respective 
	// classes to run the tests.  
	//
	// Finally, it cleans out dList by calling freeList 
	// in List.m, dumping the pointers and their memory.
	// Then it releases dList and drains the pool.
	
	List *dList = [List new];

	[Node generateNodes: dList];

	
	[Test1 test1: dList];
	[Test2 test2: dList];
	[Test3 test3: dList];
	
	
	[dList freeList];
	
	[dList release];
	
    [pool drain];
    return 0;
}
