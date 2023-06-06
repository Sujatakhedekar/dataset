// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
interface IUniversity {
    function getSubjectsBySemester(uint semester) external view returns (string[] memory);
}

// Contract for College 1
contract College1 {
    IUniversity private university;

    constructor(address universityAddress) {
        university = IUniversity(universityAddress);
    }

    function getSem1Subjects() external view returns (string[] memory) {
        return university.getSubjectsBySemester(1);
    }
}

// Contract for College 2
contract College2 {
    IUniversity private university;

    constructor(address universityAddress) {
        university = IUniversity(universityAddress);
    }

    function getSem2Subjects() external view returns (string[] memory) {
        return university.getSubjectsBySemester(2);
    }
}

// Implementation of the University of Mumbai interface
contract UniversityOfMumbai is IUniversity {
    mapping(uint => string[]) private semesterSubjects;

    constructor() {
        semesterSubjects[1] = ["IP", "ML", "JAVA"];
        semesterSubjects[2] = ["DB", "NLP", "BLOCKCHAIN"];
    }

    function getSubjectsBySemester(uint semester) external view override returns (string[] memory) {
        return semesterSubjects[semester];
    }
}