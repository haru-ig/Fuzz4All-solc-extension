pragma solidity ^0.8.0;
contract MutatedDynamicArrays17 {
    uint256 constant maxElements = 16;
    uint256[] public elementsInitial;
    constructor() public {
        elementsInitial.push(elementsInitial.length);
    }
    function add() public {
        if(elementsInitial.length == maxElements) {
            elementsInitial.pop();
        } else {
            elementsInitial.push(elementsInitial.length);
        }
    }
}
