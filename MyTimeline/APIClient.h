//
//  APIClient.h
//  MyTimeline
//
//  Created by yolanda yuan on 14/2/2017.
//  Copyright © 2017 yolanda yuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Response.h"

@interface APIClient : NSObject

+ (APIClient *) sharedManager;

- (void) networkGetHomepageListWithPageSize:(NSInteger)pageSize pageNum:(NSInteger)pageNum success:(void (^)(Response *response))success failure:(void(^)(NSError *error))failure;
@end
