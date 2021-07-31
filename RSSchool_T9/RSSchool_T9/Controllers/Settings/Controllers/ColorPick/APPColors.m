//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: John Kent
// On: 31.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import "APPColors.h"
#define UIColorFromRGB(rgbValue) \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0x00FF00) >>  8))/255.0 \
blue:((float)((rgbValue & 0x0000FF) >>  0))/255.0 \
alpha:1.0]



@implementation APPColors
+ (NSArray<UIColor *> *)getColors {
    NSArray *colors = @[
        [UIColor colorWithRed:0.75 green:0.16 blue:0.07 alpha:1],
        [UIColor colorWithRed:0.22 green:0.01 blue:0.85 alpha:1],
        [UIColor colorWithRed:0.27 green:0.49 blue:0.14 alpha:1],
        [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1],
        [UIColor colorWithRed:0.56 green:0.35 blue:0.97 alpha:1],
        [UIColor colorWithRed:0.94 green:0.5 blue:0.35 alpha:1],
        [UIColor colorWithRed:0.95 green:0.69 blue:0.13 alpha:1],
        [UIColor colorWithRed:0.24 green:0.67 blue:0.97 alpha:1],
        [UIColor colorWithRed:0.91 green:0.48 blue:0.64 alpha:1],
        [UIColor colorWithRed:0.06 green:0.18 blue:0.25 alpha:1],
        [UIColor colorWithRed:0.13 green:0.22 blue:0.07 alpha:1],
        [UIColor colorWithRed:0.32 green:0.07 blue:0.03 alpha:1],
        [UIColor colorWithRed:0.57 green:0.0 blue:0.23 alpha:1]
    ];
    
    return colors;
}
+(NSArray<NSString*>*) getColorsString{
    NSArray *colors = @[
        @"#be2813",
        @"#3802da",
        @"#467c24",
        @"#808080",
        @"#8e5af7",
        @"#f07f5a",
        @"#f3af22",
        @"#3dacf7",
        @"#e87aa4",
        @"#0f2e3f",
        @"#213711",
        @"#511307",
        @"#92003b"
    ];
    return colors;
}
@end
