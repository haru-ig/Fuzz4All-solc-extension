pragma solidity ^0.8.0;
contract Array4AccessMut {
   bytes32 bytesKey;
   uint public bytesVal;
   uint256 public two;
}
contract AccessByteSize {
   uint public bytesVal;
   uint256 public two;
   mapping (address=>uint256)mappingVal;
   mapping (bytes32=>uint)mapping2;
}
contract AccessByteSize2 {
   uint public two = 10 ** 12;
}
contract RandomMut {
   uint public x;
   uint public constant MAX = 100;
}
contract RandomAccessMut {
   uint public y;
   uint public constant MAX = 100;
}
contract MultiprecisionMut {
   uint public a;
   uint public constant constantA = 999999999;
}
contract MultiprecisionAccess {
   uint public a;
   uint constant constantA = 999999999;
}
contract Division {
   uint public a;
   uint constant constantA = 999999999;
}
contract Division2 {
   uint public a;
   uint constant constantA = 999999999;
}
contract Subtraction {
   uint public a;
   uint public constant constantA = 999999999;
}
contract Multiply {
   uint public a;
   uint public constant constantA = 999999999;
}
contract Multiplication {
   uint public a;
   uint constant constantA = 999999999;
}
contract Addition {
   uint public a;
   uint public constant constantA = 999999999;
}
contract Compares {
   uint public a;
   uint public b;
   uint constant constantA = 999999999;
   uint constant constantB = 222222222;
}
