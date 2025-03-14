pragma solidity ^0.8.0;
contract MutatedDynamicArraysWithNested {
    using MutatedDynamicArraysWithNested for uint256[];
    uint256[] public nestedStruct;
    uint256[] internal nestedStructInitial;
    function nestedAdd(uint256 value) public {
        nestedStruct.push(value);
        nestedStructInitial.push(0);
    }
}
