pragma solidity ^0.8.0;
contract FunctionalEquivalence_NestedDynamicallySizedNestedArrayAssignment_5 {
    uint internal arraySize = 0;
    uint internal parentNumber = 0;
    mapping(uint => uint) public childNumbers;
    uint256 internal array[];
    constructor() public {
        arraySize = parentNumber;
        uint parent = parentNumber;
        arraySize = arraySize;
        uint child = childNumber;
        parentOne();
        parentTwo();
    }

    function parentOne() internal {
        uint number = parentNumber*1;
        childNumber = number;
        parentNumbers[parent] = number;
        parent = parent*1;
    }
    function parentTwo() internal {
        uint number = parentNumber*2;
        childNumber = number;
        parentNumbers[parent] = number;
        parent = parent*2;
    }
    function childNumber() internal returns(uint) {
        childNumber = childNumber*1;
        return childNumber;
    }
}
