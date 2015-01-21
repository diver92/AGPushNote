//
//  AGPushNoteInfoObj.m
//  AGPushNote_Example
//
//  Created by Vlad E. Borovtsov on 21.01.15.
//  Copyright (c) 2015 Vlad E. Borovtsov. All rights reserved.
//

#import "AGPushNoteInfoObj.h"

@implementation AGPushNoteInfoObj

@synthesize message=_message, userInfo=_userInfo, tag=_tag;

#pragma mark - Factory
+ (AGPushNoteInfoObj *) infoObjectWithMessage:(NSString *) message {
  return [[AGPushNoteInfoObj alloc] initWithMessage:message userInfo:nil tag:-1];
}

+ (AGPushNoteInfoObj *) infoObjectWithMessage:(NSString *) message userInfo:(NSDictionary *) userInfo {
  return [[AGPushNoteInfoObj alloc] initWithMessage:message userInfo:userInfo tag:-1];
}
+ (AGPushNoteInfoObj *) infoObjectWithMessage:(NSString *) message userInfo:(NSDictionary *) userInfo tag:(NSInteger) tag {
  return [[AGPushNoteInfoObj alloc] initWithMessage:message userInfo:userInfo tag:tag];
}

#pragma mark - Init
- (id) initWithMessage:(NSString *) message userInfo:(NSDictionary *) userInfo tag:(NSInteger) tag {
  self = [super init];
  if (self) {
    self.message = message;
    self.userInfo = userInfo;
    self.tag = tag;
  }
  return self;
}

@end
