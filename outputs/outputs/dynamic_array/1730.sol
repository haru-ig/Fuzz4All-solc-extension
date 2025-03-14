pragma solidity ^0.8.0;
contract MutatedDynamicArrays18 {
    uint256 constant maxElements = 16;
    uint256[] public elements;
    constructor() public {
        elements = new uint256[](maxElements);
    }
    function pushFrom() public {
        for (uint256 i = 0 ; i < 10 ; i++) {
            elements.push(elements.length);
        }
    }
}
