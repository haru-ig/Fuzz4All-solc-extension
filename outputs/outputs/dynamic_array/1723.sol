pragma solidity ^0.8.0;
contract MutatedDynamicArrays16 {
    uint256[] public elements;
    uint256 constant maxElements = 16;
    constructor() public {
        elements = new uint256[](maxElements);
    }
    function add() public {
        elements.push(elements.length);
    }
}
