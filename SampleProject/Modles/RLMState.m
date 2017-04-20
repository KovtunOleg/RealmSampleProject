//
//  RLMState.m
//  SampleProject
//
//  Created by Oleg Kovtun on 20.04.17.
//  Copyright © 2017 Oleg Kovtun. All rights reserved.
//

#import "RLMState.h"

@implementation RLMState

#pragma mark - Equality

- (BOOL) isEqual:(RLMLocation*)object {
    return [object._id isEqual:self._id];
}

- (NSUInteger) hash {
    return [self._id hash];
}

#pragma mark - Realm

+ (NSString *) primaryKey {
    return @"_id";
}

@end
