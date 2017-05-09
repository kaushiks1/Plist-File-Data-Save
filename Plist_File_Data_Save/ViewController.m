//
//  ViewController.m
//  Plist_File_Data_Save
//
//  Created by Apple on 08/05/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Cities" ofType:@"plist"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    NSPropertyListFormat format;
    NSString *error;
    id fileContents = [NSPropertyListSerialization propertyListFromData:data mutabilityOption:NSPropertyListImmutable format:&format errorDescription:&error];
    self.populations = [[fileContents objectForKey:@"City Population"] mutableCopy];
    self.names = [[fileContents objectForKey:@"City Names"] mutableCopy];
    

    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
