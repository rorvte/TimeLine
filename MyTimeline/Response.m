//
//  Response.m
//  MyTimeline
//
//  Created by yolanda yuan on 14/2/2017.
//  Copyright © 2017 yolanda yuan. All rights reserved.
//

#import "Response.h"

@implementation Response

- (instancetype)initWithDictionary:(NSDictionary *)dic {
    severStateNum flag = SeverStateNumSuccess;
    NSObject *data = @"";
    NSString *message = @"";
    NSString *status = @"";
    
    if([dic valueForKey:@"code"]) {
        flag = [[dic valueForKey:@"code"]intValue];
    }
    data= [dic valueForKey:@"data"];
    message = [dic valueForKey:@"message"];
    status = [dic valueForKey:@"status"];
    return [self initWithState:flag result:data message:message];
}

- (Response *)initWithState:(severStateNum)state result:(NSObject *)data message:(NSString *)message {
    self = [super init];
    if (self) {
        _status = state;
        _data = data;
        _msg = message;
    }
    
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"status=%lu, data= %@, message=%@",_status,_data,_msg];
}


@end
