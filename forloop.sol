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
  uint256[] data;
    
  // Defining a function to demonstrate 
  // 'For loop'
  function loop() public returns(uint256[] memory)
  {
    for(uint i = 0; i < 5; i++)
    {
      data.push(i);
    }
    return data;
  }
}