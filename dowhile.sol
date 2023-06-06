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
  
    // Defining function to demonstrate 
    // 'Do-While loop'
    function loop(
    ) public returns(uint[] memory){
    do{
        j++;
        data.push(j);
     }while(j < 5) ;
      return data;
    }
}