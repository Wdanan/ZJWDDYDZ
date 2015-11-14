//
//  DuShiViewController.m
//  BaseProject
//
//  Created by tarena on 15/11/13.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "DuShiViewController.h"
#import "Factory.h"
@interface DuShiViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation DuShiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //在webView中显示百度
    NSURL *url=[NSURL URLWithString:@"http://app.lndspd.com/api_v2/bbs/list.jsp"];
    NSURLRequest *request =[NSURLRequest requestWithURL:url];
    _webView.delegate = self;
    [_webView loadRequest:request];
    [Factory addBackItemToVC:self];
    
}
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    //YES代表加载网页  NO 代表不加载
    return YES;
}
- (void)webViewDidStartLoad:(UIWebView *)webView{
    //开始加载网页
    NSLog(@"webViewDidStartLoad");
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
}
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    //加载网页成功
    NSLog(@"webViewDidFinishLoad");
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(nullable NSError *)error{
    //加载网页失败
    NSLog(@"didFailLoadWithError:%@", error.userInfo);
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
