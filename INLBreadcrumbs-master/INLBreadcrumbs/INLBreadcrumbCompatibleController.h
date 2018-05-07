

#import <UIKit/UIKit.h>
#import "INLBreadcrumb.h"

@protocol INLBreadcrumbCompatibleController <NSObject>

@property (strong, nonatomic) INLBreadcrumb * breadcrumb;

@end


@interface INLBreadcrumbViewController : UIViewController <INLBreadcrumbCompatibleController>

@property (strong, nonatomic) INLBreadcrumb * breadcrumb;

@end


@interface UIViewController (INLBreadcrumbs)

+(void)setupBreadcrumbs;

@end