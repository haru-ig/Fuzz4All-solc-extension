pragma solidity ^0.8.0;
contract MutatedDynamicArrays19 {
    uint256 constant numElements = 16;
    uint256[] public elementsInitial;
    constructor() public {
        elementsInitial = new uint256[](numElements);
    }
    function add() public {
        elementsInitial.push(elementsInitial.length);
    }
}
