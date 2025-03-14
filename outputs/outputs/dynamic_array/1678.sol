pragma solidity ^0.8.0;
contract MutatedDynamicArrays9 {
    uint256[] elements;
    constructor() public {
        elements = new uint256[](3);
        elements[0] = 100;
        elements[1] = 100;
        elements[2] = 100;
    }
    function modify() public {
        elements[1] += 1;
    }
}
