pragma solidity ^0.8.0;

contract A {
    uint256[3] uintArray;
    uint256 uInt;
}

contract B is A {
    uint256[3] uintArray;
    uint256 uInt;
    constructor () {
        uintArray[2] = new uint256[](5);
        uInt = 5;
    }
}
