pragma solidity ^0.8.0;
contract MutatedDynamicArrays12 {
    uint256[] public elements;
    constructor() public {
        elements = new uint256[](6);
        elements[3] = 150;
        elements[2] = 150;
        elements[1] = 150;
        elements[0] = 150;
        elements[4] = 200;
        elements[5] = 300;
    }
    function use() public {
        elements = new uint256[](10);
    }
}
