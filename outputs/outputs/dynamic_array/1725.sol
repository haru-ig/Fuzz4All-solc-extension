pragma solidity ^0.8.0;
contract MutatedDynamicArrays17 {
    uint256 constant maxElements = 16;
    uint256[] public elements;
    constructor() public {
        elements = new uint256[](maxElements);
    }
    function add() public {
        elements.push(elements.length);
    }
}
