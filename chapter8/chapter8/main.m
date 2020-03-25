//
//  main.m
//  chapter8
//
//  Created by Yu WEI on 10/3/20.
//  Copyright © 2020 Victor. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *s = [NSString stringWithFormat:@"My name's %@, and I am a %@.", @"Victor", @"Development Lead"];
        NSLog(@"%@", s);
        NSLog(@"%lu", [s length]);

        NSString *s1 = @"123";
        NSString *s2 = @"123";
        NSLog(@"%d", [s1 isEqualToString:s2]);

        NSString *s3 = @"abc";
        NSString *s4 = @"def";
        if (NSOrderedAscending == [s3 compare:s4]) {
            NSLog(@"Ascending");
        } else if (NSOrderedDescending == [s3 compare:s4]) {
            NSLog(@"Descending");
        } else {
            NSLog(@"Same");
        }

        NSString *s5 = @"abc100";
        NSString *s6 = @"ABC99";
        if (NSOrderedDescending == [s5 compare:s6 options:NSCaseInsensitiveSearch|NSNumericSearch]) {
            NSLog(@"In");
        }

        NSString *s7 = @"abc100";
        NSLog(@"%d", [s7 hasPrefix:@"abc"]);
        NSLog(@"%d", [s7 hasSuffix:@"100"]);
        NSString *s8 = @"ABC99";
        NSRange range1 = [s8 rangeOfString:@"BCD"];
        NSLog(@"%d", NSNotFound == range1.location);
        NSLog(@"Location:%lu, Length:%lu", range1.location, range1.length);

        NSMutableString *ms1 = [NSMutableString stringWithCapacity:42];
        [ms1 appendString:@"Hello "];
        [ms1 appendFormat:@"%@", @"world!"];
        NSLog(@"%@", ms1);

        NSMutableString *ms2 = [NSMutableString stringWithFormat:@"abcdef"];
        NSRange range2 = [ms2 rangeOfString:@"cd"];
        [ms2 deleteCharactersInRange:range2];
        NSLog(@"%@", ms2);
        [ms2 insertString:@"123" atIndex:1];
        NSLog(@"%@", ms2);

        NSArray *arr1 = [NSArray arrayWithObjects:@"one", @"two", @"three", nil];
        for (int i = 0; i < [arr1 count]; i++) {
            NSLog(@"index:%d, %@", i, [arr1 objectAtIndex:i]);
        }
        NSArray *arr2 = @[@"one", @"two", @"three"];
        for (int i = 0; i < [arr2 count]; i++) {
            NSLog(@"index:%d, %@", i, arr2[i]);
        }
        // NSLog(@"%@", arr2[10]);
        NSString *str = @"1,2,3,4,5";
        NSArray *arr3 = [str componentsSeparatedByString:@","];
        NSLog(@"%@", arr3);
        NSLog(@"%@", [arr3 componentsJoinedByString:@"-"]);

        NSMutableArray *arr4 = [NSMutableArray arrayWithCapacity:42];
        [arr4 addObject:@"a"];
        [arr4 addObject:@"b"];
        [arr4 addObject:@"c"];
        [arr4 removeObjectAtIndex:1];
        [arr4 removeObject:@"c"];
        for (NSInteger i = 0; i < [arr4 count]; i++) {
            NSLog(@"%@", [arr4 objectAtIndex:i]);
        }
        NSMutableArray *arr5 = [NSMutableArray arrayWithObjects:@"01", @"02", nil];
        // NSMutableArray *arr6 = @[@"one", @"two", @"three"];
        for (NSInteger i = 0; i < [arr5 count]; i++) {
            NSLog(@"%@", [arr5 objectAtIndex:i]);
        }

        NSEnumerator *enumerator = [arr5 objectEnumerator];
        id item;
        while (item = [enumerator nextObject]) {
            NSLog(@"NSEnumerator way: %@", item);
        }

        for (NSString *s in arr5) {
            NSLog(@"Fast way: %@", s);
        }

        [arr5 enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSLog(@"Block way: %@", obj);
        }];

        NSDictionary *d1 = @{@"key1":@"value1", @"key2":@"value2", @"key3":@"value3"};
        NSDictionary *d2 = [NSDictionary dictionaryWithObjectsAndKeys:@"value4", @"key4", @"value5", @"key5", nil];
        NSMutableDictionary *md1 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"value6", @"key6", nil];
        NSMutableDictionary *md2 = [NSMutableDictionary dictionary];
        [md2 setObject:@"value7" forKey:@"key7"];
        NSLog(@"%@", [d1 objectForKey:@"key1"]);
        NSLog(@"%@", d2[@"key5"]);
        [md1 removeObjectForKey:@"key6"];
        NSLog(@"%@", md1);
        NSLog(@"%@", md2);
        [md1 setValue:[NSNull null] forKey:@"empty"];
        NSLog(@"%@", md1[@"empty"]);
        NSLog(@"%d", ([NSNull null] == [NSNull null]));

        NSLog(@"********************");

        NSNumber *n1 = @'x';
        NSNumber *n2 = @12;
        NSNumber *n3 = @12345ul;
        NSNumber *n4 = @12345ll;
        NSNumber *n5 = @12.34f;
        NSNumber *n6 = @12.34;
        NSNumber *n7 = @YES;
        NSLog(@"%c, %i, %lu, %lld, %f, %.2f, %i",
              [n1 charValue], [n2 intValue], [n3 longValue], [n4 longLongValue], [n5 floatValue], [n6 doubleValue], [n7 boolValue]);
    }
    return 0;
}
