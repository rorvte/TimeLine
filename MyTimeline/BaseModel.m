//
//  BaseModel.m
//  MyTimeline
//
//  Created by yolanda yuan on 14/2/2017.
//  Copyright © 2017 yolanda yuan. All rights reserved.
//

#import "BaseModel.h"

@implementation BaseModel

- (instancetype)initWithDic:(NSDictionary *)dic{
    NSError *error = nil;
    self = [self initWithDictionary:dic error:&error];
    return self;
}

@end
