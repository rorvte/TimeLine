//
//  NetTool.h
//  MyTimeline
//
//  Created by yolanda yuan on 14/2/2017.
//  Copyright © 2017 yolanda yuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Response.h"

@interface NetTool : NSObject

+ (NetTool *) shareManager;

- (void)httpGetRequest:(NSString *)url withParameter:(NSDictionary *)parameter success:(void (^)(Response *reponse))success failure:(void (^)(NSError *error))failure;

@end
