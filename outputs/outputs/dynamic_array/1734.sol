pragma solidity ^0.8.0;

contract MutatedDynamicArrays18 is MutatedDynamicArrays17 {
    function add() public {
        elements.push(1);
        delete elements.length;
        elements = new uint256[](elements.length);
    }
}
