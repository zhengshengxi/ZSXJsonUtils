//
//  ZSXJsonUtils.m
//  hugou
//
//  Created by yh-zsx on 2018/6/11.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "ZSXJsonUtils.h"

@implementation ZSXJsonUtils

+(NSDictionary *)jsonParsing:(NSString *)strData
{
    if (strData.length) {
        //把数据读成二进制
        NSData *data = [strData dataUsingEncoding:NSUTF8StringEncoding];
        NSError *err = nil;
        //解析  参数1:解析的二进制数据     参数2:操作方式     参数3:错误信息
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&err];
        //判断
        if (err) {
            NSLog(@"%@",err);
        }
        return dic;
    }
    return [NSDictionary new];
}

+ (NSString *)dicToJSONString:(NSDictionary *)dic {
  NSData *data = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONReadingMutableLeaves | NSJSONReadingAllowFragments error:nil];
  if (data == nil) {
    return nil;
  }
  NSString *string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
  return string;
}

@end
