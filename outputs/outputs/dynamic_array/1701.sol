pragma solidity ^0.8.0;
contract MutatedDynamicArrays14 {
    uint256[] elements;
    constructor() public {
        elements = new uint256[](6);
        for (uint i = 3; i < 6; i++) elements.push(150);
        for (uint i = 0; i < 3; i++) elements[i] = 100;
        for (uint i = 1; i < 5; i++) elements[i] = 200;
        for (uint i = 4; i < 6; i++) elements[i] = 300;
    }
    function use() public {
        elements = new uint256[](8);
        for (uint i = 3; i < 8; i++) elements.push(100);
        for (uint i = 0; i < 3; i++) elements[i] = 200;
        for (uint i = 1; i < 5; i++) elements[i] = 300;
        for (uint i = 4; i < 6; i++) elements[i] = 400;
        for (uint i = 9; i < 10; i++) elements[i] = i;
    }
}
