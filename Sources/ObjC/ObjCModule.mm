#import "ObjCModule.h"
#import "from_cpp.h"

@interface FromCPP ()
@end

@implementation FromCPP

- (void) print_hello_world_number:(int)number
{
    MyClass *clazz = new MyClass();
    if (number == 1) {
        clazz->hello_world_1();
    } else {
        clazz->hello_world_2();
    }
}

@end
