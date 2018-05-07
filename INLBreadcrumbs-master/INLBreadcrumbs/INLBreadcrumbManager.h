

#import <Foundation/Foundation.h>

@class INLBreadcrumbCompatibleController, INLBreadcrumb;

@interface INLBreadcrumbManager : NSObject

@property (strong, nonatomic) NSString * cancelButtonTitle;
@property (strong, nonatomic) NSString * breadcrumbIndicator;

+(instancetype)defaultManager;
+(instancetype)managerForKey:(NSString *)key;

-(NSArray<INLBreadcrumb *> *)breadcrumbs;

-(void)pushBreadcrumb:(INLBreadcrumb *)breadcrumb;
-(void)popBreadcrumb:(INLBreadcrumb *)breadcrumb;

@end
