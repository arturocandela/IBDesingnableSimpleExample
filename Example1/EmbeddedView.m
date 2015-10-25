//
//  EmbeddedView.m
//  Example1
//
//  Created by Arturo Candela Molto on 25/10/15.
//  Copyright © 2015 Arturo Candela Molto. All rights reserved.
//

#import "EmbeddedView.h"

@implementation EmbeddedView

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
  
  self = [super initWithCoder:aDecoder];
  
  if (self){
    
    [self load];
    
  }
  
  return self;
  
}


- (instancetype)initWithFrame:(CGRect)frame{
  
  self = [super initWithFrame:frame];
  
  if (self){
    
    [self load];
    
  }
  
  return self;
  
}

- (void)load{
  
  UIView* view = [[[NSBundle bundleForClass:[self class]]
                   loadNibNamed:@"EmbeddedView" owner:self options:nil]
                  firstObject];
  
  [self addSubview:view];
  
  view.frame = self.bounds;
  
}

@end

