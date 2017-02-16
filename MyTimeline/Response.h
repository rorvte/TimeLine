//
//  Response.h
//  MyTimeline
//
//  Created by yolanda yuan on 14/2/2017.
//  Copyright © 2017 yolanda yuan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, severStateNum) {
    SeverStateNumSuccess = 1,
};

@interface Response : NSObject

@property(nonatomic, assign) severStateNum status;
@property(nonatomic, strong) NSObject *data;
@property(nonatomic, copy) NSString *msg;

- (instancetype)initWithDictionary:(NSDictionary *)dic;
- (Response *)initWithState:(severStateNum)state result:(NSObject *)data message:(NSString *)messsage;

- (NSString *)description;

@end
