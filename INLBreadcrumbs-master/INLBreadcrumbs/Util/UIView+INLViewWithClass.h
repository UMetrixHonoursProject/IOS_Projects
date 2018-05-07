

#import <UIKit/UIKit.h>

@interface UIView (INLViewWithClass)

+(id)viewWithClass:(Class)class;
+(id)viewWithClass:(Class)class fromNibNamed:(NSString *)nibName;

@end
