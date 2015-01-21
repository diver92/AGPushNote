//
//  AGPushNoteInfoObj.h
//  AGPushNote_Example
//
//  Created by Vlad E. Borovtsov on 21.01.15.
//  Copyright (c) 2015 Vlad E. Borovtsov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AGPushNoteInfoObj : NSObject

@property (nonatomic, copy) NSString *message;
@property (nonatomic, strong) NSDictionary *userInfo;
@property (nonatomic, assign) NSInteger tag;

+ (AGPushNoteInfoObj *) infoObjectWithMessage:(NSString *) message;
+ (AGPushNoteInfoObj *) infoObjectWithMessage:(NSString *) message userInfo:(NSDictionary *) userInfo;
+ (AGPushNoteInfoObj *) infoObjectWithMessage:(NSString *) message userInfo:(NSDictionary *) userInfo tag:(NSInteger) tag;

@end
