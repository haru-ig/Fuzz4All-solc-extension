pragma solidity ^0.8.0;
contract Arithmetic;
contract Bitwise;
contract Division;
contract Increment {
    event Result(int32, int32);
    function multiply([]uint32 x) public returns (uint32) {
        return uint32(x[0] * x[1]);
    }
}
contract Modulo;
contract ReversedDivision;
contract Strings;
contract Traversing;
