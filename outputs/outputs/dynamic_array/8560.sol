pragma solidity ^0.8.0;
contract DynamicArray {



    bytes32 public name;
    bytes32 public symbol;

    uint public decimals;

    uint8[] public _zeroes;

    uint[][] public bigArrays;
    uint8** public bigArray2;
    uint8[0] public bigArray3;
}
