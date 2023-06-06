// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MathematicalFunction {
    uint public number1 = 7;
    uint public number2 = 8;

    uint public modOfADDOfTwoNumbers = addmod(number1, number2, 2);
    uint public modOfMULOfTwoNumbers = mulmod(number1, number2, 4);
}
