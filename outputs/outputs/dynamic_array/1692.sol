pragma solidity ^0.8.0;
contract MutatedDynamicArrays12 {
    uint256[][] []elements;
    constructor() public {
        elements = new uint256[][][](5);
        elements[3] = new uint256[](2);
        elements[2] = new uint256[](2);
        elements[1] = new uint256[](2);
        elements[0] = new uint256[](2);
        elements[4] = new uint256[](2);
    }
    function use() public {
        elements[4] = elements[3];
    }
}
