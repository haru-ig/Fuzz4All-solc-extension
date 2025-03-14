pragma solidity ^0.8.0;
contract MutatedDynamicArrays11 {
    uint256[] elements;
    function use() public {
        elements = [1, 2, 3];
        elements[0] = 100;
        elements[2] = 100;
        elements[3] = 100;
    }
}
