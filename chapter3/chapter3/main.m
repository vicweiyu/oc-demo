//
//  main.m
//  chapter3
//
//  Created by PolyMac on 24/2/20.
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
            return @"red";
            break;
        case eBlueColor:
            return @"blue";
            break;
        case eGreenColor:
            return @"green";
            break;
        default:
            break;
    }
    return @"no clue";
}


@interface Rectangle : NSObject
{
@private
    ShapeColor fillColor;
    ShapePosition bounds;
}

-(void) setFillColor: (ShapeColor) fillColor;
-(void) setBounds: (ShapePosition) bounds;
-(void) draw;
@end

@implementation Rectangle

-(void) setFillColor: (ShapeColor) c;
{
    fillColor = c;
}

-(void) setBounds: (ShapePosition) b
{
    bounds = b;
}

-(void) draw
{
    NSLog(@"Drawing a Rectangle at (%d %d %d %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}

@end


@interface Circle : NSObject
{
@private
    ShapeColor fillColor;
    ShapePosition bounds;
}

-(void) setFillColor: (ShapeColor) fillColor;
-(void) setBounds: (ShapePosition) bounds;
-(void) draw;
@end

@implementation Circle

-(void) setFillColor: (ShapeColor) c;
{
    fillColor = c;
}

-(void) setBounds: (ShapePosition) b
{
    bounds = b;
}

-(void) draw
{
    NSLog(@"Drawing a Circle at (%d %d %d %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
         int count = 10;
         NSLog(@"Number from 1 to %d:", count);
         for (int i = 1; i <= count; i++) {
         NSLog(@"%d", i);
         }
         */
        
        /*
         NSLog(@"%s", argv[0]);
         if (argc == 1) {
         NSLog(@"You need to provide a file name");
         return (1);
         }
         // FILE *wordFile = fopen("/Users/polymac/Documents/victor/workspace/oc-demo/chapter3/chapter3/words.txt", "r");
         FILE *wordFile = fopen(argv[1], "r");
         char word[100];
         while (fgets(word, 100, wordFile)) {
         word[strlen(word) - 1] = '\0';
         NSLog(@"%s is %lu characters long", word, strlen(word));
         }
         fclose(wordFile);
         */

        id shapes[2];
        
        ShapePosition position0 = {0, 0, 20, 30};
        shapes[0] = [Rectangle new];
        [shapes[0] setBounds:position0];
        [shapes[0] setFillColor:eBlueColor];
        
        ShapePosition position1 = {100, 100, 80, 80};
        shapes[1] = [Circle new];
        [shapes[1] setBounds:position1];
        [shapes[1] setFillColor:eGreenColor];
        
        for (int i = 0; i < 2; i++) {
            [shapes[i] draw];
        }
    }
    return 0;
}
