package com.windreaver.form;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class Operands {

    @Pattern(regexp = "[-+]?\\d+")
    @Size(max = 9)
    private String firstOperand;

    @Pattern(regexp = "[-+]?\\d*")
    @Size(max = 9)
    private String secondOperand;

    private String operation;

    public String getOperation() {
        return operation;
    }

    public void setOperation(String operation) {
        this.operation = operation;
    }

    public String getFirstOperand() {
        return firstOperand;
    }

    public String getSecondOperand() {
        return secondOperand;
    }

    public void setFirstOperand(String firstOperand) {
        this.firstOperand = firstOperand;
    }

    public void setSecondOperand(String secondOperand) {
        this.secondOperand = secondOperand;
    }
}
