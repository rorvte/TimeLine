//
//  HomeViewModel.h
//  MyTimeline
//
//  Created by yolanda yuan on 15/2/2017.
//  Copyright © 2017 yolanda yuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewModel : NSObject

- (void)handleDataWithSuccess:(void (^)(NSArray *arr))success
                      failure:(void (^)(NSError *error))failure;

@end
