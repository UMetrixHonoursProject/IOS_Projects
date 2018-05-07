

#import <UIKit/UIKit.h>

@class INLNavbarTitleView, INLBreadcrumbManager;
@protocol INLBreadcrumbCompatibleController;

@interface INLBreadcrumb : NSObject

@property (weak, nonatomic) UIViewController<INLBreadcrumbCompatibleController> * controller;
@property (weak, nonatomic) INLBreadcrumbManager * manager;
@property (weak, nonatomic) INLNavbarTitleView * titleView;
@property (strong, nonatomic) NSString * cancelButtonTitle;
@property (strong, nonatomic) NSString * breadcrumbIndicator;

+(instancetype)breadcrumbWithController:(UIViewController<INLBreadcrumbCompatibleController> *)controller;
-(instancetype)initWithController:(UIViewController<INLBreadcrumbCompatibleController> *)controller;

+(instancetype)breadcrumbWithController:(UIViewController<INLBreadcrumbCompatibleController> *)controller manager:(INLBreadcrumbManager *)manager;
-(instancetype)initWithController:(UIViewController<INLBreadcrumbCompatibleController> *)controller manager:(INLBreadcrumbManager *)manager;

-(BOOL)isTopBreadcrumb;
-(void)updateTitle;
-(NSString *)title;

@end
