//
//  RLMState.h
//  SampleProject
//
//  Created by Oleg Kovtun on 20.04.17.
//  Copyright © 2017 Oleg Kovtun. All rights reserved.
//

#import "RLMLocation.h"

@interface RLMState : RLMObject
@property (nonnull) NSString *_id; // primary key
@property (nonnull) NSString *name;
@property (nonnull) RLMArray<RLMLocation *><RLMLocation>* locations;
@end
