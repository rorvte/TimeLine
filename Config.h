//
//  Config.h
//  
//
//  Created by yolanda yuan on 15/2/2017.
//
//

#ifndef Config_h
#define Config_h

#pragma mark - 获取当前屏幕的宽度，高度

#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define kScreenWidth [UIScreen mainScreen].bounds.size.width

#define kNavBarHeight 64

#define UICOLOR_FROM_RGB(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
#define kAppWhiteColor [UIColor whiteColor]//白色
#define kAppDarkGrayColor [UIColor darkGrayColor]//深灰色
#define kAppGrayColor [UIColor grayColor]//灰色
#define kAppMainBgColor UICOLOR_FROM_RGB(240,240,240,1)

#define UIFont_size(size) [UIFont systemFontOfSize:size]

//弱引用
#define __WeakSelf__ __weak typeof (self)


#endif /* Config_h */
