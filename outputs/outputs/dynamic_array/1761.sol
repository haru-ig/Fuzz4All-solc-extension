pragma solidity ^0.8.0;
contract DerivedMutatedDynamicArraysWithNested {
    uint256[] public nestedStruct;
    uint256[] public nestedStructInitial;
    function nestedAdd(uint256 value) public {
        nestedStruct.push(value);
        nestedStructInitial.push(0);
    }
}
