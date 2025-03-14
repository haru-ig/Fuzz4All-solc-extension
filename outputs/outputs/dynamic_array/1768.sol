pragma solidity ^0.8.0;
contract DerivedMutatedDynamicArraysWithNestedMutatedCalldata {
    uint256 nested;
    constructor() public {
        nested = message.data[0];
    }
    function nestedAdd(uint256 value) public {
        nested = nested + value;
    }
}
