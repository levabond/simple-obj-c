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
//        [request setHTTPBody:body];
//        [request setValue:[NSString stringWithFormat:@"%d", [body length]] forHTTPHeaderField:@"Content-Length"];
        [request setURL:[NSURL URLWithString:url]];
    NSError *error = nil;
        NSHTTPURLResponse *responseCode = nil;
    NSURLSessionDataTask *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&responseCode error:&error];
    if([responseCode statusCode] != 200){
            NSLog(@"Error getting %@, HTTP status code %i", url, [responseCode statusCode]);
//            return nil;
        }
}
@end
