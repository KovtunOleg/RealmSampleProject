//
//  Location.h
//  SampleProject
//
//  Created by Oleg Kovtun on 20.04.17.
//  Copyright © 2017 Oleg Kovtun. All rights reserved.
//

#import "RLMProxy.h"

// requests will be proxied to Location db enitity
@protocol LocationProtocol <NSObject>
@optional
@property (nonatomic,strong,readonly) NSString *_id;
@property (nonatomic,strong,readonly) NSString *name;
@property (nonatomic,assign,readonly) double fLatitude;
@property (nonatomic,assign,readonly) double fLongitude;
@property (nonatomic,strong,readonly) NSString *postalCode;
@end

@class State;
@interface Location : RLMProxy <LocationProtocol>
@property (nonatomic,strong,readonly) State *state;
@end
