

#import "INLNavbarTitleView.h"

@implementation INLNavbarTitleView

-(void)resize {
	[self.titleLabel sizeToFit];
	self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.titleLabel.frame.size.width, self.frame.size.height);
}

- (IBAction)titleTapped:(id)sender {
	if (self.onTitleTapped) {
		self.onTitleTapped();
	}
}

-(void)setTitle:(NSString *)title {
	self.titleLabel.text = title;
}

-(NSString *)title {
	return self.titleLabel.text;
}

@end
