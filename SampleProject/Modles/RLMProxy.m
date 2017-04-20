//
//  RLMProxy.m
//  SampleProject
//
//  Created by Oleg Kovtun on 20.04.17.
//  Copyright © 2017 Oleg Kovtun. All rights reserved.
//

#import "RLMProxy.h"

@implementation RLMProxy

- (instancetype) initWithDBEntity:(id)dbEntity {
    NSAssert(dbEntity!=nil, @"");
    _dbEntity = dbEntity;
    return self;
}

+ (instancetype) proxyForDBEntity:(id)dbEntity {
    return [[self alloc] initWithDBEntity:dbEntity];;
}

- (NSMethodSignature *) methodSignatureForSelector:(SEL)selector {
    return [self.dbEntity methodSignatureForSelector:selector];
}

- (void) forwardInvocation:(NSInvocation *)invocation {
    if ([self.dbEntity respondsToSelector:invocation.selector]) {
        [invocation invokeWithTarget:self.dbEntity];
    }
}

#pragma mark - Equality

- (BOOL) isEqual:(RLMProxy*)object {
    return [object.dbEntity isEqual:self.dbEntity];
}

- (NSUInteger) hash {
    return [self.dbEntity hash];
}

@end
