pragma solidity ^0.8.0;
contract Test25 {
    constructor() payable {
    }
    function test() public view returns (uint8){
        uint8 value;
        value = 0;
        while (value!= 1) {
            value = value + 2;
        }
        return value;
    }
