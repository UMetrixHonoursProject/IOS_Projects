
#import "UIView+INLViewWithClass.h"

@implementation UIView (INLViewWithClass)

+(id)viewWithClass:(Class)class {
	return [UIView viewWithClass:class fromNibNamed:NSStringFromClass(class)];
}

+(id)viewWithClass:(Class)class fromNibNamed:(NSString *)nibName {	
	NSObject * nibItem = nil;
	NSEnumerator * nibEnumerator = [[[NSBundle bundleForClass:class] loadNibNamed:nibName owner:self options:nil] objectEnumerator];
	
	while ((nibItem = [nibEnumerator nextObject]) != nil) {
		if ([nibItem isKindOfClass:class]) {
			return nibItem;
		}
	}
	return nil;
}

@end
