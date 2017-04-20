//
//  RLMLocation.h
//  SampleProject
//
//  Created by Oleg Kovtun on 20.04.17.
//  Copyright © 2017 Oleg Kovtun. All rights reserved.
//

#import <Realm/Realm.h>

RLM_ARRAY_TYPE(RLMLocation)

@class RLMState;
@interface RLMLocation : RLMObject
@property (nonnull) NSString *_id; // primary key
@property (nonnull) NSString *name;
@property (nullable) RLMState *state;
@property double fLatitude;
@property double fLongitude;
@property (nullable) NSString* postalCode;
@end
