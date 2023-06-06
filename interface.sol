// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract A {
 
    string internal x;
    function setA() external {
        x = "Vanitagumde";
    }
}

contract B { 
    uint internal pow; 
    function setB() external { 
        uint a = 2;
        uint b = 10;
        pow = a * b;
         
    }
} 
contract C is A, B { 
  function getStr(  ) external returns(string memory) { 
        return x; 
    }
   
    function getPow( ) external returns(uint) { 
        return pow; 
    } 
} 
 
contract caller { 
 
    C contractC = new C(); 
    function testInheritance(
    ) public returns(string memory, uint) { 
        contractC.setA(); 
        contractC.setB(); 
        return (
          contractC.getStr(), contractC.getPow()); 
    } 
}
