pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample83 {
    mapping(uint256 => uint256) private myMap;

    constructor(uint256 size) {
        myMap[1] = 0;
        myMap[2] = ~myMap[0];
        myMap[2] = myMap[2] + 0;
        myMap[2] = myMap[2] * myMap[1];
        myMap[1] = myMap[1] * 2;
    }

    function getAndIncrease(uint256 key) public view returns (uint256) {
        uint256 value = myMap[key];
        myMap[key] = value + 1;
        return value;
    }
}
