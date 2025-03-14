pragma solidity ^0.8.0;
contract Mutations {
    SimpleArrayAssignment simpleArray;
    SingleArrayAssignment singleArray;
    ArrayAssignmentWithNonZeroLength arrayNonZeroLength;
    ArrayAssignmentWithZeroLength arrayZeroLength;
    ArrayAssignmentWithArray arrayWithArray;
    ArrayAssignmentWithString arrayWithString;
    ArrayAssignmentWithVector arrayWithVector;
    ArrayAssignmentWithNullPointer arrayWithNullPointer;
    ArrayAssignmentWithNullAndReallocated arrayWithNullAndReallocated;

    uint constant value = 69;

    function assignUint(SimpleArrayAssignment storage array, uint newValue) public {
        array.uint = newValue;
    }

    function assignSingleUintPointer(SimpleArrayAssignment storage array, uint8 newValue) public {
        uint8* ptr = memOffset(array.uint) + 32;
        *ptr = newValue;
    }


    function assignUintArrayNullPointer(SingleArrayAssignment storage array, uint newValue) public {

        uint* ptrArray = memOffset(array.uintArray) + 16;
        *ptrArray = newValue;
    }

    function assignUintArrayWithZeroLength(SingleArrayAssignment storage array, uint newValue, uint memoryLength) public {

        uint* ptrArrayZeroLength = memOffset(array.uintArray) + 4 * array.length;
        for (uint i = 0; i < array.length; i++) {
          *ptrArrayZeroLength = newValue;
          ptrArrayZeroLength++;
        }
    }

    function assignUintArrayZeroLength(SingleArrayAssignment storage array, uint newValue) public {

        uint* ptrArrayWithNullPointer = memOffset(array.uintArrayWithNullPointer) + 16;
        for (uint i = 0; i < array.length; i++) {
          *ptrArrayWithNull
