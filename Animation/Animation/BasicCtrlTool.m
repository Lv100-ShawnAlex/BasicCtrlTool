//
//  BasicCtrlTool.m
//  Animation
//
//  Created by ShawnAlex on 2020/7/22.
//  Copyright © 2020 LC. All rights reserved.
//

#import "BasicCtrlTool.h"

@implementation BasicCtrlTool


/**设置视图*/
+ (UIView *)view:(CGRect)frame BackgroundColor:(UIColor *)bgColor SubView:(UIView *)bcView{
    UIView *view = [[UIView alloc] initWithFrame: frame];
    view.backgroundColor = bgColor;
    [bcView addSubview: view];
    return view;
}
/**设置Label*/
+ (UILabel *)creatLabel:(CGRect)frame LabText:(NSString *)labText LabTextColor:(UIColor *)labTextColor LabTextFont:(CGFloat)labTextFont LabTextAlignment:(NSTextAlignment)labTextAlignment BCView:(UIView *)bcView{
    UILabel *IRLabel = [[UILabel alloc] initWithFrame: frame];
    IRLabel.text = labText;
    IRLabel.textAlignment = labTextAlignment;
    IRLabel.textColor = labTextColor;
    IRLabel.font = [UIFont systemFontOfSize: labTextFont];
    [bcView addSubview: IRLabel];
    return IRLabel;
}
/**设置TextFiled*/
+ (UITextField *)TextField:(CGRect)frame TextFont:(CGFloat)textFont BCColor:(UIColor *)color TextColor:(UIColor *)textColor Placeholder:(NSString *)placeholderStr BCView:(UIView *)bcView{
    UITextField *field = [[UITextField alloc] initWithFrame:frame];
    field.font = [UIFont systemFontOfSize: textFont];
    field.backgroundColor = color;
    field.textColor = textColor;
    field.placeholder = placeholderStr;
    [bcView addSubview:field];
    return field;
}
/**设置Button*/
+ (UIButton *)button:(CGRect)frame BtnTextColor:(UIColor *)btnTextColor BtnTextFont:(CGFloat)btnTextFont BtnText:(NSString *)btnText BCView:(UIView *)bcView{
    
    UIButton *selectBtn = [UIButton buttonWithType: UIButtonTypeCustom];
    selectBtn.frame = frame;
    [selectBtn setTitleColor: btnTextColor forState: UIControlStateNormal];
    selectBtn.titleLabel.font = [UIFont systemFontOfSize: btnTextFont];
    [selectBtn setTitle: btnText forState: UIControlStateNormal];
    [bcView addSubview: selectBtn];
    return selectBtn;
}

/**设置Button带图片*/
+ (UIButton *)button:(CGRect)frame Image:(NSString *)imageStr BCView:(UIView *)bcView{
    UIButton *selectBtn = [UIButton buttonWithType: UIButtonTypeCustom];
    selectBtn.frame = frame;
    [selectBtn setImage:[UIImage imageNamed:imageStr] forState:UIControlStateNormal];
    [bcView addSubview: selectBtn];
    return selectBtn;
}

/**设置UIImageView*/
+ (UIImageView *)imageView:(CGRect)frame imageStr:(NSString *)imageStr BCView:(UIView *)bcView{
    UIImageView *imageV = [[UIImageView alloc] initWithFrame: frame];
    imageV.image = [UIImage imageNamed: imageStr];
    [bcView addSubview: imageV];
    return imageV;
}

@end
