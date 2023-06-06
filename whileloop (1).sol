// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
// Creating a contract 
contract Types { 
      
    // Declaring a dynamic array
    uint[] data; 
    
    // Declaring state variable
    uint8 j = 0;
     
    // Defining a function to 
    // demonstrate While loop'
    function loop(
    ) public returns(uint[] memory){
    while(j < 5) {
        j++;
        data.push(j);
     }
      return data;
    }
}