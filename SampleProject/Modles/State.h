//
//  State.h
//  SampleProject
//
//  Created by Oleg Kovtun on 20.04.17.
//  Copyright © 2017 Oleg Kovtun. All rights reserved.
//

#import "RLMProxy.h"

// requests will be proxied to State db enitity
@protocol StateProtocol <NSObject>
@optional
@property (nonatomic,strong,readonly) NSString *name;
@property (nonatomic,strong,readonly) NSString *_id;
@end

@class Location;
@interface State : RLMProxy <StateProtocol>
@property (nonatomic,strong,readonly) NSArray<Location*>* locations;
@end
