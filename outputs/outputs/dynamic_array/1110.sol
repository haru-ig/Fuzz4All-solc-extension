pragma solidity ^0.8.0;
contract SingleArrayAssignmentMutator {
    uint public _int;
    uint[] _uintArray;
    uint _newInt = 100;
}
contract ArrayAssignmentWithArrayMutator {
    uint public _int;
    uint[] _uintArray;
    uint[] _newUintArray = new uint[](5);
}
contract ArrayAssignmentWithNullPointerMutator {
    uint public _int;
    uint[] _uintArrayWithNullPointer;
    uint _nullPointer = 0x7ff00000000000000;
}
contract ArrayAssignmentWithNullAndReallocatedMutator {
    uint public _int;
    uint[] _uintArrayWithNullAndReallocated;
    uint[] _nullAndReallocated;
}
