// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract SolidityTest {
 
        // Declaring variables
        uint16 public assignment = 20;
        uint public assignment_add = 50;
        uint public assign_sub = 50;
        uint public assign_mul = 10;
        uint public assign_div = 50;
        uint public assign_mod = 32;
     
        // Defining function to
        // demonstrate Assignment Operator
        function getResult() public{
           assignment_add += 10;
           assign_sub -= 20;
           assign_mul *= 10;
           assign_div /= 10;
           assign_mod %= 20;
           return ;
        }

}
