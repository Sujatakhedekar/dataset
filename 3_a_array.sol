// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract ArrayTypes {
    //< ===================== Fixed Size Array =====================>
    uint[4] rollNumbers;

    function setRollNumbers(uint _index, uint _rollNumber) public {
        rollNumbers[_index] = _rollNumber;
    }

    function getRollNumbers() public view returns (uint[4] memory) {
        return rollNumbers;
    }

    //< ===================== Dynamic Size Array =====================>
    uint[] employeeIds;

    function setEmployeeIds(uint _empId) public {
        employeeIds.push(_empId);
    }

    function removeEmployeeId() public {
        employeeIds.pop();
    }

    function getEmployeeIds() public view returns (uint[] memory) {
        return employeeIds;
    }

    //< ===================== Multi-Dimensional Array =====================>

    // uint256[col][row] array_name
    uint[2][3] public data = [[1, 2], [3, 4], [5, 6]];

    function getData(uint _col, uint _row) public view returns (uint) {
        uint number = data[_col][_row];
        return number;
    }
    

            //intger Array
        uint[] public xyz =[1,2,3,4,5];

        //character Array
        string[] public pqr = ["NLP","DL","IP","HCI"];
        //2D Array
        uint[][] public mno =[ [10,20,30] , [1,2,3]];
        //Multidimensional array
        uint[3][2] public matrix = [
        [1, 2, 3],
        [4, 5, 6]
        ];
        //inserting Array
        uint[] public myArray;
        function insertValue(uint _value) public {
        myArray.push(_value);
            }
}

}
