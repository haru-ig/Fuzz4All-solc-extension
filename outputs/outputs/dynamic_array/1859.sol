pragma solidity ^0.8.0;

contract DynamicNestedArray {

    uint[] public nested1;

    uint[] public nested2;
    function Test1() public {
        nested1.push(0);
        nested2.push(1);
        nested1.push(2);
        nested2.push(2);
        nested1.push(3);
        nested2.push(4);
    }
}

contract DynamicNestedArray2 {
    uint[] dynamic storage NestedArray;
    uint[] nonDynamicNestedArray;
    function Test1() public {
        nestedArray.push(0);
        nestedArray.push(1);
        NestedArray.push(2);
        nestedArray.push(3);
    }
}

contract NonFixedArrayWithAssignment {
    uint[] public fieldWithoutFixedArray;
    uint public totalCount;
    constructor() {
        totalCount = 4;
        fieldWithoutFixedArray.push(0);
        fieldWithoutFixedArray.push(1);
        fieldWithoutFixedArray.push(2);
    }
    function NonFixedArrayAssignment(uint _totalCount) public {
        totalCount = _totalCount;
        fieldWithoutFixedArray.push(3);
    }
    function NonFixedArrayAssignmentWithAssignment(uint _totalCount) public {
        totalCount = _totalCount;
        fieldWithoutFixedArray.push(4);
    }
    function NonFixedArrayAssignmentWithAssignmentNoFixedArray(uint[] memory _array) public {
        totalCount = _array.length + 1;
        fieldWithoutFixedArray = _array;
    }
    function NonFixedArrayAssignmentWithAssignmentTotalCount(uint _totalCount) public {
        fieldWithoutFixedArray.push(0);
        fieldWithoutFixedArray.push(1);
        fieldWithoutFixedArray.push(2);
        totalCount = _totalCount;
    }
    function NonFixedArrayAssignmentWithAssignmentAssignmentToNonFixedArray(uint[] memory _array) public {
        totalCount = 3 + _array.length;
        fieldWithout
