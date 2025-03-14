pragma solidity ^0.8.0;

contract A {
    constructor(mapping(uint8 => bytes32) _data) public {
        uint8 constant a =abi.encodePacked(100);
    }
}
