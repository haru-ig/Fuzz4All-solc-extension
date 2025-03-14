pragma solidity ^0.8.0;
contract SemanticallyEquivalentDynamicArrays9 {
    uint256[10][1] memory elements;
    constructor() public {
        elements = new uint256[10][1](1);
    }
    function modify() public {
        elements[3][0] += 1;
    }
}
