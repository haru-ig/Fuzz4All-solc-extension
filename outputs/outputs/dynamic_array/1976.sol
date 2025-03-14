pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_9 {
    uint256[] public field;
    mapping(uint256 => uint256) public idMapping;
    mapping(uint256[] => uint256) public idIndexMapping;
    mapping(uint256 => uint256[]) public idElementMapping;
    mapping(uint256[] => uint256[]) public idIndexElementMapping;
    constructor() public {
        field = new uint256[](5 + 1);
        field[field.length] = 1;
        field[field.length + 1] = 2;
        idMapping[1] = 1;
        idMapping[2] = 2;
        field[field.length + 1] = 3;
        idIndexMapping[2] = 1;
        idIndexMapping[3] = 2;
        field[field.length] = 4;
        field[field.length - 1] = 5;
        idElementMapping[1] = new uint256[](3);
        idElementMapping[2] = new uint256[](2);
        idElementMapping[1][0] = 1;
        idElementMapping[2][0] = 2;
        idElementMapping[1][1] = 3;
        idElementMapping[2][1] = 4;
        idIndexElementMapping[2][0] = 1;
        idIndexElementMapping[3][0] = 2;
        idIndexElementMapping[2][1] = 3;
        idIndexElementMapping[3][1] = 4;
    }
}
