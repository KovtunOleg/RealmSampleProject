//
//  RLMProxy.h
//  SampleProject
//
//  Created by Oleg Kovtun on 20.04.17.
//  Copyright © 2017 Oleg Kovtun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RLMProxy : NSProxy
/**
 * real Realm DB entity to which will be made inquiries
 */
@property (nonatomic, strong, readonly) id dbEntity;

+ (instancetype) proxyForDBEntity:(id)dbEntity;
@end
