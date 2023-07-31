package com.example.ung_dung_calculator;

public class Calculate {
    public static float Calculate(float firstOperand, float secondOperand, char operator){
        switch (operator){
            case '+' :
                return firstOperand + secondOperand;
            case '-':
                return firstOperand - secondOperand;
            case '*':
                return firstOperand * secondOperand;
            case '/':
               if (secondOperand != 0){
                   return firstOperand / secondOperand;
               }else {
                   throw new RuntimeException("Không thể chia hết cho số 0");
               }
            default:
                throw new RuntimeException("Không hợp lệ");
        }
    }
}
