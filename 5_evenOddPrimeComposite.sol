// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract evenOddPrimeComposite {
    uint public number;

    function setNumber(uint _number) public {
        number = _number;
    }

    function primeCompositeEvenOddChecker()
        public
        view
        returns (string memory, string memory, string memory)
    {
        string memory resultOfPrime;
        string memory resultOfComposite;
        string memory resultOfEvenOdd;

        if (number <= 1) {
            resultOfPrime = "not a prime number.";
            resultOfComposite = "not a composite number.";
        }
        for (uint i = 2; i < number / 2; i++) {
            if (number % i == 0) {
                resultOfPrime = "number is not prime.";
                resultOfComposite = "number is composite.";
            }
        }

        if (number % 2 == 0) {
            resultOfEvenOdd = "number is even.";
        } else {
            resultOfEvenOdd = "number is odd.";
        }
        return (resultOfPrime, resultOfComposite, resultOfEvenOdd);
    }
}
