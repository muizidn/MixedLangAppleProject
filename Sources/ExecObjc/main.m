#import <Foundation/Foundation.h>
#import <ObjCModule/ObjCModule.h>

int main()
{
    FromCPP *o = [[FromCPP alloc]init];
    [o print_other];
    [o print_hello_world_number:1];
    NSLog(@"Hello World!");
}
