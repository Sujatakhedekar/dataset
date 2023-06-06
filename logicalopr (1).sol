// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
// Creating a contract
contract logicalOperator{
 
     // Defining function to demonstrate
     // Logical operator
     function Logic(bool a, bool b) public pure returns( bool, bool, bool){
       // Logical AND operator 
       bool and = a&&b;
       // Logical OR operator 
       bool or = a||b;
       // Logical NOT operator
       bool not = !a;
       return (and, or, not);
 }
}
