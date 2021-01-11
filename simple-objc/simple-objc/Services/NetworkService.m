//
//  NetworService.m
//  simple-objc
//
//  Created by Лев Бондаренко on 19.12.2020.
//

#import "NetworkService.h"

@interface NetworkService ()

@end


@implementation NetworkService
- (void)get:(NSString *)url {
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
        [request setHTTPMethod:@"GET"];
        [request setURL:[NSURL URLWithString:url]];
    NSError *error = nil;
        NSHTTPURLResponse *responseCode = nil;
//    NSURLSessionDataTask *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&responseCode error:&error];
    [[[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:
      ^(NSData * _Nullable data,
        NSURLResponse * _Nullable response,
        NSError * _Nullable error) {

//        NSError *error = nil;
            id object = [NSJSONSerialization
                              JSONObjectWithData:data
                              options:0
                              error:&error];
          NSLog(@"Data received: %@", object[0][@"id"]);
    }] resume];
    if([responseCode statusCode] != 200){
        

    }
}
@end
