//
//  UIView+HXZTap.m
//  分销电商
//
//  Created by Masteryi on 2016/10/28.
//  Copyright © 2016年 Masteryi. All rights reserved.
//

#import "UIView+HXZTap.h"
#import <objc/runtime.h>

@implementation UIView (HXZTap)

static const char *ActionHandlerTapGestureKey;

- (void)setTapActionWithBlock:(void (^)(void))block {
    
    self.userInteractionEnabled = YES;
    
    UITapGestureRecognizer *gesture = objc_getAssociatedObject(self, &ActionHandlerTapGestureKey);
    if (!gesture) {
        gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleActionForTapGesture:)];
        [self addGestureRecognizer:gesture];
        objc_setAssociatedObject(self, &ActionHandlerTapGestureKey, gesture, OBJC_ASSOCIATION_RETAIN);
    }
    
    objc_setAssociatedObject(self, &ActionHandlerTapGestureKey, block, OBJC_ASSOCIATION_COPY);
}

- (void)handleActionForTapGesture:(UITapGestureRecognizer *)gesture {
    if (gesture.state == UIGestureRecognizerStateRecognized)  {
        void(^action)(void) = objc_getAssociatedObject(self, &ActionHandlerTapGestureKey);
        if (action)  {
            action();
        }
    }
}

@end
