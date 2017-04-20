//
//  StatesProvider.m
//  SampleProject
//
//  Created by Oleg Kovtun on 20.04.17.
//  Copyright © 2017 Oleg Kovtun. All rights reserved.
//

#import "StatesProvider.h"
#import "RLMState.h"
#import "State.h"

@implementation StatesProvider

+ (instancetype) sharedInstance {
    static StatesProvider *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [StatesProvider new];
    });
    return sharedInstance;
}

- (instancetype) init {
    if (self = [super init]) {
        NSMutableArray *states = [NSMutableArray new];
        for (RLMState *state in [RLMState allObjectsInRealm:self.realm]) {
            [states addObject:[State proxyForDBEntity:state]];
        }
        _states = [NSArray arrayWithArray:states];
    }
    return self;
}

#pragma mark - Accessors

- (RLMRealm*) realm {
    NSError* error = nil;
    RLMRealmConfiguration *config = [RLMRealmConfiguration defaultConfiguration];
    config.readOnly = YES;
    config.fileURL = [[NSBundle mainBundle] URLForResource:@"default" withExtension:@"realm"];
    RLMRealm* realm = [RLMRealm realmWithConfiguration:config error:&error];
    if (error) {
        NSLog(@"%@",error.localizedDescription);
    }
    return realm;
}

@end
