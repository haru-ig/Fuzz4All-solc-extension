pragma solidity ^0.8.0;
contract A {
    constructor() {
        myArray = new uint256[](0);

        myArray[1] = 2;
    }
}
