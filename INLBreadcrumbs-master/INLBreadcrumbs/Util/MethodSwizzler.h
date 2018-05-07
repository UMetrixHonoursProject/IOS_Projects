

#import <Foundation/Foundation.h>

void replaceMethodImplementations(Class class, SEL originalSel, SEL swizzledSel);
void replaceClassMethodImplementations(Class class, SEL originalSel, SEL swizzledSel);

id getAssociatedProperty(id selfObject, SEL propertySelector);
void setAssociatedProperty(id selfObject, SEL propertySelector, id value);

@interface NSObject (MethodSwizzler)

+(void)replaceMethodImplementation:(SEL)originalSel with:(SEL) swizzledSel;
+(void)replaceClassMethodImplementation:(SEL)originalSel with:(SEL)swizzledSel;

-(id)associatedProperty:(SEL)propertySelector;
-(void)setAssociatedProperty:(SEL)propertySelector value:(id)value;

@end