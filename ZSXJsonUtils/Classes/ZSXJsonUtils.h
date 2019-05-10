//
//  ZSXJsonUtils.h
//  hugou
//
//  Created by yh-zsx on 2018/6/11.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZSXJsonUtils : NSObject

/**
 *  Json数据解析
 *
 *  @param strData 要解析的NSString数据
 *
 *  @return 返回解析好的字典数据
 */
+(NSDictionary *)jsonParsing:(NSString *)strData;


/**
 字典转Json

 @param dic 字典
 @return Json字符串
 */
+ (NSString *)dicToJSONString:(NSDictionary *)dic;
@end
