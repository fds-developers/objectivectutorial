//
//  main.m
//  objectivectutorial
//
//  Created by MICKAEL GERMEMONT on 12/29/20.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject
// accumulator methods
-(void) setAccumulator:(double)value;
-(void) clear;
-(double) accumulator;
// arithmetic methods
-(void) add:(double)value;
-(void) substract:(double)value;
-(void) multiply:(double)value;
-(void) divide:(double)value;
@end

@implementation Calculator {
    double accumulator;
}
-(void) setAccumulator:(double)value {
    accumulator = value;
}
-(void) clear {
    accumulator = 0;
}
- (double)accumulator {
    return accumulator;
}
- (void)add:(double)value {
    accumulator+=value;
}
- (void)substract:(double)value{
    accumulator-=value;
}
- (void)multiply:(double)value{
    accumulator*=value;
}
- (void)divide:(double)value{
    if(value == 0) {
        NSLog(@"Division by zero.");
        accumulator = NAN;
    } else {
        accumulator/=value;
    }
}
@end


@interface Fraction : NSObject
-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
@end

@implementation Fraction {
    int numerator;
    int denominator;
}
-(void) print {
    NSLog(@"%i/%i", numerator, denominator);
}
-(void) setNumerator:(int)n {
    numerator = n;
}
-(void) setDenominator:(int)d {
    denominator = d;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // chapter 1
        /*
        NSLog(@"Hello, World!\nand another one, Hello, World!");
        
        int sum = 50+26;
        NSLog(@"sum is %i", sum);
        */
        
        // chapter 2
        /*
        int numerator = 1;
        int denominator = 3;
        NSLog(@"fraction %i/%i", numerator, denominator);
        
        // create an instance of a Fraction
        
        Fraction *myFraction;
        myFraction = [Fraction alloc];
        myFraction = [myFraction init];
        
        // set fraction to 1/3
        
        [myFraction setNumerator:1];
        [myFraction setDenominator:3];
        
        // display the fraction using the print method
        
        NSLog(@"The value of myFraction is:");
        [myFraction print];
         */
        
        // chapter 3
        double value1, value2;
        char operator;
        Calculator *deskCalc = [Calculator new];
        NSLog(@"Type in your expression.");
        scanf("%lf %c %lf", &value1, &operator, &value2);
        
        [deskCalc setAccumulator:value1];
        
        /*
         if(operator == '+') {
             [deskCalc add:value2];
         } else if(operator == '-') {
             [deskCalc substract:value2];
         } else if(operator == '*') {
             [deskCalc multiply:value2];
         } else if(operator == '/') {
             [deskCalc divide:value2];
         } else {
             NSLog(@"Unknown operator.");
         }
         */
        
        switch (operator) {
            case '+':
                [deskCalc add:value2];
                break;
            case '-':
                [deskCalc substract:value2];
                break;
            case '*':
                [deskCalc multiply:value2];
                break;
            case 'x':
                [deskCalc multiply:value2];
                break;
            case 'X':
                [deskCalc multiply:value2];
                break;
            case '/':
                [deskCalc divide:value2];
                break;
            default:
                NSLog(@"Unknown operator.");
                break;
        }
        
        NSLog(@"%.2f", [deskCalc accumulator]);
    }
    
    return 0;
}
