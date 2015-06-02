// The river's not flooded this time
//
//  JRProgressView.h
//  JRUIKit
//
//  Created by JoinUs Development on 6/1/15.
//  Copyright (c) 2015 Joshua Martin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JRProgressView : UIView

@property (assign, nonatomic) IBInspectable NSInteger cornerRadius;
@property (assign, nonatomic) IBInspectable CGFloat progress;
@property (assign, nonatomic) IBInspectable UIColor* progressColor;
@property UIView *progressView;

@end
