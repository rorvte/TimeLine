//
//  HomeViewModel.m
//  MyTimeline
//
//  Created by yolanda yuan on 15/2/2017.
//  Copyright © 2017 yolanda yuan. All rights reserved.
//

#import "HomeViewModel.h"
#import "Config.h"
#import "APIClient.h"
#import "HomeModel.h"

@implementation HomeViewModel

- (void)handleDataWithSuccess:(void (^)(NSArray *arr))success failure:(void(^)(NSError *error))failure{
    
    [[APIClient sharedManager] networkGetHomepageListWithPageSize:20 pageNum:0 success:^(Response *response) {
        
        NSLog(@".......respone.description : %@",response.description);
        if (response.status==SeverStateNumSuccess) {
            NSLog(@"请求成功!");
            
            NSMutableArray *tmpArr=[NSMutableArray array];
            for (NSDictionary *subDic in (NSArray *)[response.data valueForKey:@"results"]) {
                HomeModel *model=[[HomeModel alloc]initWithDic:subDic];
                [tmpArr addObject:model];
            }
            success(tmpArr);
        }
    } failure:^(NSError *error) {
        failure(error);
    }];
}

@end
