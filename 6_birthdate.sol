// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Birthdate {
    uint DD = 21;
    uint MM = 4;
    uint YY = 19;
    uint YYM = 99;

    uint public number1 = DD & MM;
    uint public number2 = YY | YYM;

    uint public modOfADDOfTwoNumbers = addmod(number1, number2, DD);
    uint public modOfMULOfTwoNumbers = mulmod(number1, number2, MM);
}
