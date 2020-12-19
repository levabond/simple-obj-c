//
//  NetworkService.h
//  simple-objc
//
//  Created by Лев Бондаренко on 19.12.2020.
//

#import <Foundation/Foundation.h>
#import "APIResponse.h"

@interface NetworkService : NSObject
-(void)get: (NSString *)url;
@end
