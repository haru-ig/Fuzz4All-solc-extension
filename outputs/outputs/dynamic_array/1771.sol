pragma solidity ^0.8.0;
contract AlternativeDerivedDynamicArrays {
    uint256[] public staticArray;
    uint256[] public dynamicArray;
    uint256[] public staticArrayNonMutated;
    uint256[] public dynamicArrayNonMutated;
    function staticArrayAdd(uint256 value) public {
        staticArray.push(value);
        staticArrayNonMutated.push(0);
    }
    function dynamicArrayAdd(uint256 value) public {
        dynamicArrayNonMutated.push(value);
        dynamicArray.push(0);
    }
    function staticArrayNonMutatedAdd(uint256 value) public {
        staticArrayNonMutated.push(value);
    }
    function dynamicArrayNonMutatedAdd(uint256 value) public {
        dynamicArray.push(value);
    }
}
