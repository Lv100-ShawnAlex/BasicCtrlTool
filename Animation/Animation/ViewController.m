//
//  ViewController.m
//  Animation
//
//  Created by ShawnAlex on 2020/7/22.
//  Copyright © 2020 LC. All rights reserved.
//

#import "ViewController.h"
#import "BasicCtrlTool.h"

#define SCREEN_W [UIScreen mainScreen].bounds.size.width

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self creatSubView];
}

- (void)creatSubView {
    
    //设置图片
    UIImageView *headImgV = [BasicCtrlTool imageView:CGRectMake(SCREEN_W / 2 - 50, 100, 100, 100) imageStr:@"pic" BCView: self.view];
    
   
    
    //设置用户名
    CGRect usernameLab_f = CGRectMake(40, CGRectGetMaxY(headImgV.frame) + 100, 70, 30);
    UILabel *usernameLab = [BasicCtrlTool creatLabel:usernameLab_f LabText:@"用户名:" LabTextColor:[UIColor blackColor] LabTextFont:16 LabTextAlignment:NSTextAlignmentLeft BCView:self.view];
    
    CGRect usernameTF_f = CGRectMake(CGRectGetMaxX(usernameLab.frame), CGRectGetMinY(usernameLab.frame), SCREEN_W - 40 - CGRectGetMaxX(usernameLab.frame), CGRectGetHeight(usernameLab.frame));
    
    UITextField *usernameTF = [BasicCtrlTool TextField:usernameTF_f TextFont:16 BCColor:[UIColor whiteColor] TextColor:[UIColor blackColor] Placeholder:@"请输入用户名" BCView:self.view];
    usernameTF.clearButtonMode = UITextFieldViewModeWhileEditing;
                               
    CGRect line1_f = CGRectMake(40, CGRectGetMaxY(usernameLab.frame) + 5, SCREEN_W - 80, 1);
    UIView *line1 = [BasicCtrlTool view:line1_f BackgroundColor:[UIColor lightGrayColor] SubView:self.view];

    
    
    
    //设置密码
    CGRect pwdlab_f = CGRectMake(40, CGRectGetMaxY(line1.frame) + 20, 70, 30);
    UILabel *pwdLab = [BasicCtrlTool creatLabel:pwdlab_f LabText:@"密码:" LabTextColor:[UIColor blackColor] LabTextFont:16 LabTextAlignment:NSTextAlignmentLeft BCView:self.view];
    
    CGRect pwdTF_f = CGRectMake(usernameTF_f.origin.x, CGRectGetMinY(pwdLab.frame), usernameTF_f.size.width, usernameTF_f.size.height);
    UITextField *pwdTF = [BasicCtrlTool TextField:pwdTF_f TextFont:16 BCColor:[UIColor whiteColor] TextColor:[UIColor blackColor] Placeholder:@"请输入密码" BCView:self.view];
    pwdTF.clearButtonMode = UITextFieldViewModeWhileEditing;
    
    CGRect line2_f = CGRectMake(40, CGRectGetMaxY(pwdLab.frame) + 5, SCREEN_W - 80, 1);
    UIView *line2 = [BasicCtrlTool view:line2_f BackgroundColor:[UIColor lightGrayColor] SubView:self.view];

    
    
    //登录按钮
    CGRect loginBtn_f = CGRectMake(line2_f.origin.x, CGRectGetMaxY(line2_f) + 80, line2_f.size.width, 40);
    UIButton *loginBtn = [BasicCtrlTool button:loginBtn_f BtnTextColor:[UIColor whiteColor] BtnTextFont:17 BtnText:@"登录" BCView:self.view];
    loginBtn.layer.cornerRadius = 5;
    loginBtn.backgroundColor = [UIColor blackColor];
    
}

@end
