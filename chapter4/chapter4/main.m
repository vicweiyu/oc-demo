//
//  main.m
//  chapter4
//
//  Created by victor on 24/2/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    eRedColor,
    eBlueColor,
    eGreenColor
} ShapeColor;

typedef struct {
    int x, y, width, height;
} ShapePosition;

NSString *colorName(ShapeColor color)
{
    switch (color) {
        case eRedColor:
            return @"Red";
            break;
        case eBlueColor:
            return @"Blue";
            break;
        case eGreenColor:
            return @"Green";
            break;
        default:
            break;
    }
    return @"no clue";
}

@interface Shape : NSObject
{
    ShapeColor fillColor;
    ShapePosition bounds;
}

-(void) setColor: (ShapeColor) fillColor;
-(void) setPosition: (ShapePosition) bounds;
-(void) draw;
@end

@implementation Shape

-(void) setColor: (ShapeColor) c
{
    fillColor = c;
}

-(void) setPosition: (ShapePosition) b
{
    bounds = b;
}

-(void) draw
{
    
}

@end

@interface Rectangle : Shape

@end

@implementation Rectangle

-(void) draw
{
    NSLog(@"Drawing a Rectangle at (%d %d %d %d) in %@ color.", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}

@end

@interface Circle : Shape

@end

@implementation Circle

-(void) setColor: (ShapeColor) c
{
    if (c == eRedColor) {
        c = eGreenColor;
    }
    [super setColor:c];
}

-(void) draw
{
    NSLog(@"Drawing a Circle at (%d %d %d %d) in %@ color.", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id shapes[3];
        
        ShapePosition bounds0 = {10, 20, 50, 80};
        shapes[0] = [Rectangle new];
        [shapes[0] setPosition:bounds0];
        [shapes[0] setColor:eBlueColor];
        
        ShapePosition bounds1 = {100, 100, 200, 300};
        shapes[1] = [Circle new];
        [shapes[1] setPosition:bounds1];
        [shapes[1] setColor:eGreenColor];
        
        ShapePosition bounds2 = {150, 200, 200, 300};
        shapes[2] = [Circle new];
        [shapes[2] setPosition:bounds2];
        [shapes[2] setColor:eRedColor];
        
        for (int i = 0; i < 3; i++) {
            [shapes[i] draw];
        }
    }
    return 0;
}
