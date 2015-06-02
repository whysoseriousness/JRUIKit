//
//  JRProgressView.m
//  JRUIKit
//
//  Created by JoinUs Development on 6/1/15.
//  Copyright (c) 2015 Joshua Martin. All rights reserved.
//

#import "JRProgressView.h"

@implementation JRProgressView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


-(instancetype)init{
    if(self = [super init]){
        [self setupUI];
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    if(self = [super initWithCoder:aDecoder]){
        [self setupUI];
    }
    return self;
}

-(void)setupUI{
    
    if(!self.progressView){ self.progressView = [[UIView alloc] initWithFrame:self.frame]; [self addSubview:self.progressView]; }
    if(!self.progressColor){ self.progressColor = [UIColor whiteColor]; }
    if(!self.progress){ self.progress = 0.0f; }
    if(!self.cornerRadius){ self.cornerRadius = 2.0f; }
    
    if (self.progress > 100) {   self.progress = 100;    }
    if (self.progress <   0) {   self.progress =   0;    }
    
    self.progressView.backgroundColor = self.progressColor;
    self.progressView.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width * (self.progress/100.0f), self.frame.size.height);
    
    self.layer.cornerRadius = self.cornerRadius;
    self.clipsToBounds = true;
    
}

-(void)setCornerRadius:(NSInteger)cornerRadius{
    _cornerRadius = cornerRadius;
    [self setupUI];
}


-(void)setProgress:(CGFloat)progress{
    _progress = progress;
    [self setupUI];
}


-(void)setProgressColor:(UIColor *)progressColor{
    _progressColor = progressColor;
    [self setupUI];
}



@end
