pragma solidity ^0.8.0;
contract MutatedDynamicArrays19 {
    uint256 constant maxElements = 256;
    uint256[maxElements] public elementsInitial;
    uint256[] public elementsCurrent;
    constructor() public {
        elementsInitial = new uint256[](maxElements);
        elementsCurrent = new uint256[](maxElements);
    }
    function add() public {
        elementsInitial.push(elementsInitial.length);
        elementsCurrent.push(elementsCurrent.length);
    }
}
