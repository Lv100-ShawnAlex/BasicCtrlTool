//
//  BasicCtrlTool.h
//  Animation
//
//  Created by ShawnAlex on 2020/7/22.
//  Copyright © 2020 LC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BasicCtrlTool : NSObject

/**设置视图*/
+ (UIView *)view:(CGRect)frame BackgroundColor:(UIColor *)bgColor SubView:(UIView *)bcView;

/**设置Label*/
+ (UILabel *)creatLabel:(CGRect)frame LabText:(NSString *)labText LabTextColor:(UIColor *)labTextColor LabTextFont:(CGFloat)labTextFont LabTextAlignment:(NSTextAlignment)labTextAlignment BCView:(UIView *)bcView;

/**设置TextFiled*/
+ (UITextField *)TextField:(CGRect)frame TextFont:(CGFloat)textFont BCColor:(UIColor *)color TextColor:(UIColor *)textColor Placeholder:(NSString *)placeholderStr BCView:(UIView *)bcView;

/**设置Button*/
+ (UIButton *)button:(CGRect)frame BtnTextColor:(UIColor *)btnTextColor BtnTextFont:(CGFloat)btnTextFont BtnText:(NSString *)btnText BCView:(UIView *)bcView;

/**设置Button带图片*/
+ (UIButton *)button:(CGRect)frame Image:(NSString *)imageStr BCView:(UIView *)bcView;

/**设置UIImageView*/
+ (UIImageView *)imageView:(CGRect)frame imageStr:(NSString *)imageStr BCView:(UIView *)bcView;

@end

NS_ASSUME_NONNULL_END
