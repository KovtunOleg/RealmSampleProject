//
//  StatesProvider.h
//  SampleProject
//
//  Created by Oleg Kovtun on 20.04.17.
//  Copyright © 2017 Oleg Kovtun. All rights reserved.
//

#import <Foundation/Foundation.h>

@class State;
@interface StatesProvider : NSObject
@property (nonatomic,strong,readonly) NSArray<State*>* states;

+ (instancetype) sharedInstance;
@end
