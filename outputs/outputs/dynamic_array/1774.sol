pragma solidity ^0.8.0;
contract DerivedDynamicArraysWithNested {
    uint256[] private nonStaticArray;
    uint256[] private nonStaticArrayInitial;
    uint256[] private nonStaticArrayNonMutated;
    uint256[] private nonStaticArrayNonMutatedInitial;
    constructor() public {
        nonStaticArray = new uint256[](2);
        nonStaticArray.push(0);
        nonStaticArray.push(0);
        nonStaticArrayInitial = new uint256[](2);
        nonStaticArrayInitial.push(0);
        nonStaticArrayInitial.push(0);
    }
    function nonStaticArrayAdd(uint256 value) public {
        nonStaticArray.push(value);
        nonStaticArrayInitial.push(0);
    }
    function nonStaticArrayNonMutatedAdd(uint256 value) public {
        nonStaticArrayNonMutated.push(value);
        nonStaticArrayNonMutatedInitial.push(0);
    }
    function nonStaticArrayNonMutatedAddWithoutPushFront() public {
        nonStaticArrayNonMutated.push(0);
    }
}
