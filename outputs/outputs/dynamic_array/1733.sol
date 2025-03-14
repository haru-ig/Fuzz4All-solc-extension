pragma solidity ^0.8.0;
contract MutatedDynamicArrays18 {
    uint256 constant maxElements = 16;
    uint256[] public elementsInitial;
    constructor() public {
        elementsInitial = new uint256[](maxElements);
    }
    function add() public {
        elementsInitial.push(elementsInitial.length);
    }
}
