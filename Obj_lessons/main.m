//
//  main.m
//  Obj_lessons
//
//  Created by Ekaterina on 28.01.21.
//

#import <Foundation/Foundation.h>


//1. Создание функции, которая будет проверять, входит ли переданная буква в английский алфавит.

void checkLetter(NSString * letter) {

    NSString *alfabet = @"ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    NSString *alfabetRUS = @"АБВГДЕЖЗИКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ";
    
    if ([alfabet containsString:letter.uppercaseString]) {
        NSLog(@"English alphabet contains letter %@", letter);
    } else if ([alfabetRUS containsString:letter.uppercaseString]) {
        NSLog(@"Russian alphabet contains letter %@", letter);
    } else {
        NSLog(@"neither English nor Russian alphavite contain this letter %@", letter);
    }

}

//2. Разделение метода calculate (из практической задачи 2) на несколько методов (отдельно сложение, вычитание, умножение и деление).


CGFloat sum(NSInteger firstNumber, NSInteger secondNumber) {
    return firstNumber+secondNumber;
}

CGFloat subtraction(NSInteger firstNumber, NSInteger secondNumber) {
    return firstNumber-secondNumber;
}

CGFloat multiplication(NSInteger firstNumber, NSInteger secondNumber) {
    return firstNumber*secondNumber;
}

CGFloat division(NSInteger firstNumber, NSInteger secondNumber) {
    return firstNumber/secondNumber;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        checkLetter(@"я");
        
        NSInteger firstNumber;
        NSInteger secondNumber;
        char operator; // я не использую NSString потому что он не работает со switch, про способ с enum знаю, не уверена как правильнее? И со scanf NSString не работает похоже..?
        
        
        NSLog(@"first number: ");
        scanf("%ld", &firstNumber);
        
        NSLog(@"operator +, -, *, / : ");
        scanf("%s", &operator);
        
        NSLog(@"second number: ");
        scanf("%ld", &secondNumber);
        
        switch (operator) {
            case '+':
                NSLog(@"%ld %c %ld = %f", (long)firstNumber, operator, (long)secondNumber, sum(firstNumber, secondNumber));
                break;
            case '-':
                NSLog(@"%ld %c %ld = %f", (long)firstNumber, operator, (long)secondNumber, subtraction(firstNumber, secondNumber));
                break;
            case '*':
                NSLog(@"%ld %c %ld = %f", (long)firstNumber, operator, (long)secondNumber, multiplication(firstNumber, secondNumber));
                break;
            case '/':
                if (secondNumber == 0) {
                    NSLog(@"Error! You can't divide by 0!");
                    break;
                } else {
                    NSLog(@"%ld %c %ld = %f", (long)firstNumber, operator, (long)secondNumber, division(firstNumber, secondNumber));
                    break;
                }
        }
        
       
    }
    return 0;
}
