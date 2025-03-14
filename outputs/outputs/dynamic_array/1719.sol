pragma solidity ^0.8.0;
contract MutatedDynamicArrays15 {
    uint256[] public elements;
    uint256 constant numElements = 6;
    constructor() public {
        elements = [120, 100, 90, 100, 100, 100];
        elements[3] = 150;
        elements[2] = 150;
        elements[1] = 150;
        elements[0] = 150;
        elements[4] = 200;
        elements[5] = 300;
    }
    function use() public returns (uint256) {
        elements = [170, 90, 170, 80, 60, 150];
        return elements[4];
    }
    function get() public returns (uint256) {
        return elements[1];
    }
    function modify(uint256 index, uint256 newValue) public {
        elements[index] = newValue;
        elements[2] = newValue;
        elements[3] = newValue;
    }
    function remove(uint256 index) public  {
        elements[index] = 55;
        elements.length--;
    }
}
