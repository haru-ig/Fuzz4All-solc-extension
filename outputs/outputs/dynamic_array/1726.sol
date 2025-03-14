pragma solidity ^0.8.0;
contract MutatedDynamicArrays8 {
    uint16[] public elements;
    uint16 constant maxElements = 8;
    constructor() public {
        elements = new uint16[](maxElements);
    }
    function add() public {
        elements.push(elements.length);
    }
}
