pragma solidity ^0.8.0;
contract MutatedDynamicArrays18 {
    uint256 constant maxElements = 16;
    uint256[] public elements;
    constructor() public {
        elements.push(elements.length);
    }
    function add() public {
        delete elements[0];
        elements.push(elements.length);
    }
}
