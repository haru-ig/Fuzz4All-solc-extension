pragma solidity ^0.8.0;
contract DerivedDynamicArraysWithNested {
    uint256[] public nonStaticArray;
    uint256[] public nonStaticArrayInitial;
    uint256[] public nonStaticArrayNonMutated;
    uint256[] public nonStaticArrayNonMutatedInitial;
    function nonStaticArrayAdd(uint256 value) public {
        nonStaticArray.push(value);
        nonStaticArrayInitial.push(0);
    }
    function nonStaticArrayNonMutatedAdd(uint256 value) public {
        nonStaticArrayNonMutated.push(value);
        nonStaticArrayNonMutatedInitial.push(0);
    }
}
