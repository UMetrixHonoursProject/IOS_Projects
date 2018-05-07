

#import <UIKit/UIKit.h>

@interface INLNavbarTitleView : UIView

@property (weak, nonatomic) IBOutlet UILabel * titleLabel;
@property (weak, nonatomic) NSString * title;

@property (strong, nonatomic) void(^onTitleTapped)();

@end
