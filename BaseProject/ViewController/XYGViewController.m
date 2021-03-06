//
//  XYGViewController.m
//  BaseProject
//
//  Created by tarena on 15/11/12.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "XYGViewController.h"

@interface XYGViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@end

@implementation XYGViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //在webView中显示百度
    NSURL *url=[NSURL URLWithString:@"http://yunshizhushou.kangfuzi.cn/shicai?action=get_zhengzhuang_html&zhengzhuang=%E8%A1%80%E7%B3%96%E9%AB%98&from=ios"];
    NSURLRequest *request =[NSURLRequest requestWithURL:url];
    _webView.delegate = self;
    [_webView loadRequest:request];
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
