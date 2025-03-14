pragma solidity ^0.8.0;
contract C22 {
    uint256[] public a;
    uint256[] public nestedArray;
    uint256 value;
    constructor() {
        nestedArray[0] = value;
        nestedArray[1] = value;
        nestedArray[2] = value;
        nestedArray[3] = 42;
        nestedArray[0] = 42;
        nestedArray[1] = 42;
        nestedArray[2] = 42;
        nestedArray[3] = 42;
    }
}
