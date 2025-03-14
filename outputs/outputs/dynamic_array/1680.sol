pragma solidity ^0.8.0;
contract MutatedDynamicArrays10 {
    uint256[] elements;
    constructor() public {
        elements = new uint256[](3);
        elements[0] = 100;
        elements[1] = 100;
    }
    function modify() public {
        elements.length = 2;
        elements[1] += 1;
    }
}
