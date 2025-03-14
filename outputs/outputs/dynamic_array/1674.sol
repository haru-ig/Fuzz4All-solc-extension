pragma solidity ^0.8.0;
contract MutatedDynamicArrays9 {
    uint256[] elements;
    constructor() public {
        elements = new uint256[](10);
    }
    function modify() public {
        elements[3] += 1;
    }
}
