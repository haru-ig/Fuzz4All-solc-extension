pragma solidity ^0.8.0;
contract MutatedDynamicArrays19 {
    uint256 constant maxElements = 16;
    uint256[maxElements][] public elementsInitial;

    constructor() public {
        elementsInitial[0] = new uint256[](maxElements);
        elementsInitial[0][0] = 42;
        elementsInitial[0][1] = 42;
        elementsInitial[0][2] = 42;
        elementsInitial[0][3] = 42;
    }
    function add() public {
        elementsInitial.push(elementsInitial[0][0]);
        elementsInitial.push(elementsInitial[0][1]);
        elementsInitial.push(elementsInitial[0][2]);
        elementsInitial.push(elementsInitial[0][3]);
    }
}
