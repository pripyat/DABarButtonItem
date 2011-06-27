//
//  DABarButtonItem.h
//
//  Created by David Schiefer on 27.06.11.
//  Copyright 2011 David Schiefer. All rights reserved.
//  
//  About this class: UIBarButtonItem scales a lot of images based on their width in iOS 4. This can produce
//  undesired results with the appearance of the UIBarButtonItem. This class takes advantage of the scaling
//  properties of UIButton to achieve the desired effect.

#import <Foundation/Foundation.h>

@interface DABarButtonItem : UIBarButtonItem 
{
	@private
	UIButton*_button;
	BOOL _highlightTouch;
}

/*
 Sets the image for the DABarButtonItem.
 @param image - The image that the DABarButtonItem should use.
 @returns A DABarButtonItem instance.
 */

- (id)initWithButtonImage:(UIImage *)image;

/*
 Returns the underlying UIButton instance
 @property button - The underlying UIButton instance.
 @returns A UIButton instance that is used as the custom view.
 */

@property (nonatomic, assign) UIButton*button;

/*
 Defines whether the UIButton copies the "touch to glow" that normal UIBarButtonItems use or not.
 @property highlightTouch - Returns a boolean whether the UIButton copies the "glow" that normal UIBarButtonItems use or not.
 @returns A glowing/non-glowing upon touch UIButton instance.
 */

@property (nonatomic, assign) BOOL highlightTouch;

@end