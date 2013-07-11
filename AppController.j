/*
 * AppController.j
 * NewApplication
 *
 * Created by You on January 29, 2013.
 * Copyright 2013, Your Company All rights reserved.
 */

@import <Foundation/CPObject.j>


@implementation AppController : CPObject
{
    CPTextField label;
    var contentView;
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    var theWindow = [[CPWindow alloc] initWithContentRect:CGRectMakeZero() styleMask:CPBorderlessBridgeWindowMask];
    
    contentView = [theWindow contentView];

    label = [[CPTextField alloc] initWithFrame:CGRectMakeZero()];

    [label setStringValue:@"Welcome to HubStats"];
    [label setFont:[CPFont boldSystemFontOfSize:46.0]];

    [label sizeToFit];

    [label setAutoresizingMask:CPViewMinXMargin | CPViewMaxXMargin | CPViewMinYMargin | CPViewMaxYMargin];
    [label setCenter:[contentView center]];

    [contentView addSubview:label];

    var button = [[CPButton alloc] initWithFrame: CGRectMake(
                     CGRectGetWidth([contentView bounds])/2.0 - 40,
                     CGRectGetMaxY([label frame]) + 10,
                     80, 24
                 )];

    [button setAutoresizingMask:CPViewMinXMargin |
                                CPViewMaxXMargin |
                                CPViewMinYMargin |
                                CPViewMaxYMargin];

    [button setTitle:"Enter"];
    [button setTarget:self];
    [button setAction:@selector(enter:)];

    [contentView addSubview:button];

    [theWindow orderFront:self];

    // Uncomment the following line to turn on the standard menu bar.
    //[CPMenu setMenuBarVisible:YES];
}

- (void)enter:(id)sender
{
    [label setStringValue:"Nothing here yet, sorry :("];
    [label sizeToFit];
    [label setCenter:[contentView center]];
}

@end
