pragma solidity ^0.8.0;
contract MutatedDynamicArrays10 {
    uint256[] elements;
    constructor() public {
        elements = new uint256[](10);
    }
    function modify() public {
        elements.push(1);
        elements.length--;
        elements.pop();
    }
}
