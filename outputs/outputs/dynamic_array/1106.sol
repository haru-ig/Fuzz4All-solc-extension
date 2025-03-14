pragma solidity ^0.8.0;
contract SimpleArrayAssignment {
    uint public _uint;
    uint[] _uintArray;
}
contract SingleArrayAssignment {
    uint public _int;
    uint[] _uintArray;
}

pragma solidity ^0.8.0;
contract ArrayAssignmentWithNonZeroLength {
    uint public _uint;
    uint[] _uintArray;
}
contract ArrayAssignmentWithZeroLength {
   uint public _uint;
   uint[] _uintArray;
}
contract ArrayAssignmentWithArray {
    uint public _uint;
    uint[] _uintArray;
}
contract ArrayAssignmentWithString {
   uint public _uint;
   uint[1] public _uintArrayStrings;
}
contract ArrayAssignmentWithVector {
    uint public _uint;
    uint[] _uintArray;
}
contract ArrayAssignmentWithNullPointer {
    uint public _int;
    uint[] _uintArrayWithNullPointer;
}
contract ArrayAssignmentWithNullAndReallocated {
    uint public _int;
    uint[] _uintArrayWithNullAndReallocated;
}
