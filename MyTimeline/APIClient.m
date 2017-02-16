
//
//  APIClient.m
//  MyTimeline
//
//  Created by yolanda yuan on 14/2/2017.
//  Copyright © 2017 yolanda yuan. All rights reserved.
//

#import "APIClient.h"
#import "Url.h"
#import "NetTool.h"

@implementation APIClient

+ (APIClient *)sharedManager{
    static APIClient *manager=nil;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        //一次只允许一个请求
        if (manager==nil) {
            manager=[[APIClient alloc]init];
        }
    });
    return manager;
}

- (void)networkGetHomepageListWithPageSize:(NSInteger)pageSize pageNum:(NSInteger)pageNum success:(void (^)(Response *response))success failure:(void(^)(NSError *error))failure{
        NSDictionary *paramDic = [NSDictionary dictionaryWithObjectsAndKeys:@(pageSize),@"limit",@(pageNum),@"skip", nil];
    
    [[NetTool shareManager]httpGetRequest:kApi_Get_HomepageList withParameter:paramDic success:^(Response *response){
        success(response);
    }failure:^(NSError *error){
        failure(error);
    }];
}

@end
