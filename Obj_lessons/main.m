//
//  main.m
//  Obj_lessons
//
//  Created by Ekaterina on 28.01.21.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1. Создать калькулятор на основе практической задачи 3.
        //2. Улучшить калькулятор благодаря выводу результата, а также переменных в консоль одной строкой (как в практической задаче 2)
        
        NSInteger firstNumber;
        NSInteger secondNumber;
        char operator;
        
        
        printf("first number: ");
        scanf("%ld", &firstNumber);
        printf("operator +, -, *, / : ");
        scanf("%s", &operator);
        
        printf("second number: ");
        scanf("%ld", &secondNumber);
        
        switch (operator) {
            case '+':
                NSLog(@"%ld %c %ld = %ld", (long)firstNumber, operator, (long)secondNumber, firstNumber+secondNumber);
                break;
            case '-':
                NSLog(@"%ld %c %ld = %ld", (long)firstNumber, operator, (long)secondNumber, firstNumber-secondNumber);
                break;
            case '*':
                NSLog(@"%ld %c %ld = %ld", (long)firstNumber, operator, (long)secondNumber, firstNumber*secondNumber);
                break;
            case '/':
                if (secondNumber == 0) {
                    NSLog(@"Error! You can't divide by 0!");
                    break;
                } else {
                    NSLog(@"%ld %c %ld = %ld", (long)firstNumber, operator, (long)secondNumber, firstNumber/secondNumber);
                    break;
                }
        }
        
        //3. *Создать приложение, которое будет вычислять среднее число из трех переменных без применения специальных функций.
        CGFloat a, b, c;
        printf("input three numbers: ");
        scanf("%lf, %lf, %lf", &a, &b, &c);
        NSLog(@"Average of %lf, %lf, %lf = %lf", a, b, c, (a+b+c)/3);
    }
    return 0;
}
