// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract SolidityTest {
    constructor() {}
 
    function getResult() public pure returns (string memory) {
         
        // This code returns a string
        // if a > b we return "a is bigger"
        // else we return "b is bigger"
        uint256 a = 300;
        uint256 b = 200;
        return (a > b ? "a is bigger" : "b is bigger");
    }
}
