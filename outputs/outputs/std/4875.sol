pragma solidity ^0.8.0;
contract MutateWithMath {
    uint[] public test;
    constructor(uint256[] memory _array) public {


        test = _array;
    }
}
