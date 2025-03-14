pragma solidity ^0.8.0;
contract MutatedDynamicArraysWithNested {
    uint256[] nestedStruct;
    uint256[] nestedStructInitial;
    function nestedAdd(uint256 value) public {
        nestedStruct.push(value);
        nestedStructInitial.push(0);
    }
}
