// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/* Consider university of mumbai as interface where as to provide subject electives to two colleges  sathaye
   and mldc(methods inside interface),
   create a smart contract to provide the list of sem-1 subjects in the form of array to sathaye and sem-2 subjects to mldc.
*/

interface MumbaiUniversity {
    function sathaye() external pure returns (string[4] memory);

    function mldc() external pure returns (string[4] memory);
}

contract Test is MumbaiUniversity {
    function sathaye() public pure override returns (string[4] memory) {
        string[4] memory sem_1 = [
            "Data Science",
            "Soft Computing",
            "Cloud Computing",
            "Research in Computing"
        ];
        return sem_1;
    }

    function mldc() public pure override returns (string[4] memory) {
        string[4] memory sem_2 = [
            "Image Processing",
            "Big Data",
            "Microservice",
            "Modern Networking"
        ];
        return sem_2;
    }
}
