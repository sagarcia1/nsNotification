//
//  ViewController.m
//  UILocalNotification
//
//  Created by Marcelo Garcia on 5/17/15.
//  Copyright (c) 2015 Marcelo Garcia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *notificationName = @"MTPostNotificationTarget";
   //add observer é o cara que fica observando e quando ocorre uma mudança no
    //nsnotificationCenter ele chama o metodo useNotificationWithString, o grande segredo é o notificationName
    // que vai ser chamado no postNotificationWithstring
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

-(void)postNotificationWithString:(NSString *)orientation{
    NSString *notificationName =@"MTPostNotificationTarget";
    NSString *key  = @"OrientationStringValue";
    NSDictionary *dictionary  = [NSDictionary dictionaryWithObject:orientation forKey:key];
    [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:nil userInfo:dictionary];
}


-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{// metodo que controla quando muda a orientação do telefone, é filho da ViewController
    
    if (toInterfaceOrientation == UIInterfaceOrientationPortrait) {
        [self postNotificationWithString:@"Portrait"];
    }
    else {
        [self postNotificationWithString:@"Landscape"];
    }
}


@end
