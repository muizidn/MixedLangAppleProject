#import "ObjCModule.h"
#import "cpp_main_header.h"

@interface FromCPP ()
@end

@implementation FromCPP

- (void) print_hello_world_number:(int)number
{
    MainCpp *clazz = new MainCpp();
    if (number == 1) {
        clazz->hello_world_1();
    } else {
        clazz->hello_world_2();
    }
}

- (void) print_other
{
    BaseClass *o;

    o = new RootDirFirst();
    o->print();

    o = new SubDirInclude();
    o->print();
}

@end
