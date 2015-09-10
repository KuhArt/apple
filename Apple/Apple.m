#import "Apple.h"

@implementation Apple

@synthesize seed = _seed;
@synthesize currentColor = _currentColor;
@synthesize isHang = _isHang;

-(BOOL) drop {
    
    if ([self isHang] == true) {
        [self setIsHang:false];
        NSLog(@"fruit drop from tree");
    }
    return [self isHang];
}

-(void) grow {
    if([self currentColor] == fruitOfRed){
        NSLog(@"fruit is red");
    }
    else if([self currentColor] == fruitOfGreen){
        [self setCurrentColor: (FruitColor) fruitOfYellow];
        NSLog(@"fruit is yellow");
    }
    else if([self currentColor] == fruitOfYellow){
        [self setCurrentColor: (FruitColor) fruitOfRed];
        NSLog(@"fruit is red");
    }
}
-(id) initWithSeedCount: (NSNumber *) seedCount{
    
    self = [super init];
    if(self)
    {
        [self setCurrentColor: (FruitColor) fruitOfGreen];
        [self setSeed: seedCount];
        [self setIsHang: true];
        NSLog(@"fruit was created");
    }
    return self;
}
@end