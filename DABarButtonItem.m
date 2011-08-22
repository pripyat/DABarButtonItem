#import "DABarButtonItem.h"


@implementation DABarButtonItem

@synthesize button = _button;
@synthesize highlightTouch = _highlightTouch;
@synthesize enabled;

- (id)initWithButtonImage:(UIImage *)image
{
	UIImage *buttonImage = image;
	
	_button = [UIButton buttonWithType:UIButtonTypeCustom];
	[_button setImage:buttonImage forState:UIControlStateNormal];
	_button.frame = CGRectMake(0.0, 0.0, buttonImage.size.width, buttonImage.size.height);
	
	_button.showsTouchWhenHighlighted = YES;
	
	[self setCustomView:self.button];
	
	return self;
}

- (id)initWithButtonImage:(UIImage *)image target:(id)target action:(SEL)action highlightsTouches:(BOOL)flag
{
	UIImage *buttonImage = image;
	
	_button = [UIButton buttonWithType:UIButtonTypeCustom];
	[_button setImage:buttonImage forState:UIControlStateNormal];
	_button.frame = CGRectMake(0.0, 0.0, buttonImage.size.width, buttonImage.size.height);
	
	_button.showsTouchWhenHighlighted = flag;
	
	[_button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
	
	[self setCustomView:self.button];
	
	return self;
}

- (void)setImage:(UIImage *)image
{
	[self.button setImage:image forState:UIControlStateNormal];
}

- (void)setHighlightTouch:(BOOL)flag
{
	self.button.showsTouchWhenHighlighted = flag;
}

- (void)setEnabled:(BOOL)flag
{
	if (flag)
	{
		_button.enabled = YES;
		self.button.showsTouchWhenHighlighted = YES;
	}
	else
	{
		_button.enabled = NO;
		self.button.showsTouchWhenHighlighted = NO;
	}
}
		
- (void)dealloc
{
	self.button = nil;
	[super dealloc];
}

@end
