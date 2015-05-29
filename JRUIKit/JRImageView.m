//
//  SCImageView.m
//  SocialClout
//
//  Created by JoinUs Development on 5/19/15.
//  Copyright (c) 2015 Join Us. All rights reserved.
//

#import "JRImageView.h"

@implementation SCImageView

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
    
    if(!self.cornerRadius){ self.cornerRadius = 2.0f; }
    self.layer.cornerRadius = self.cornerRadius;
    self.clipsToBounds = true;
    
}

-(void)setCornerRadius:(NSInteger)cornerRadius{
    _cornerRadius = cornerRadius;
    [self setupUI];
}


@end
