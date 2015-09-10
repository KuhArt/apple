#import <Foundation/Foundation.h>
#import "AppleTree.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Apple * apple = [[Apple alloc] initWithSeedCount:[[NSNumber alloc] initWithInt: 10]];
        [apple grow];
        [apple grow];
        [apple drop];
        
        Leaf * leaf = [[Leaf alloc] init];
        [leaf grow];
        [leaf drop];
        
        AppleTree * at = [[AppleTree alloc] initWithAge: [[NSNumber alloc] initWithInt:10]];
        [at addApple:apple];
        [at addLeaf: leaf];
        
    }
    return 0;
 }