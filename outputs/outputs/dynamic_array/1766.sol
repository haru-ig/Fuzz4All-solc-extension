pragma solidity ^0.8.0;
contract DerivedMutatedDynamicArrays {
    uint256[] public nestedStruct;
    uint256[] public nestedStructInitial;
    function add(uint256 value) public {
        nestedStruct.push(value);
        nestedStructInitial.push(0);
    }
}
