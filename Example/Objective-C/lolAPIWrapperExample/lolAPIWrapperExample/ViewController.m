//
//  ViewController.m
//  lolAPIWrapperExample
//
//  Created by Riley on 2016-03-21.
//  Copyright © 2016 rdurant. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) lolApiWrapper *wrapper;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //"na" could be eu, or whatever.
    self.wrapper =[[lolApiWrapper alloc] init];
    [self.wrapper ApiKey:@"YOUR API KEY HERE" region:@"na"];
    
    //Calling method to find the recent game data
    //Find your summoner ID online (We'll use mine)
    [self recentGameInfoForSummonerWithID:48050102];
}


-(NSDictionary *)recentGameInfoForSummonerWithID:(int)id {
    //Creating string for easier use
    NSString *gameString = [NSString stringWithFormat:@"/by-summoner/%i/recent", id];
    NSLog(@"%@", gameString);
    
    //Or whatever, could possible be "@"/champion/champID""
    [self.wrapper game:gameString];
    NSDictionary *dict = self.wrapper.get;
    NSLog(@"The dict is %@", dict);
    return dict;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
