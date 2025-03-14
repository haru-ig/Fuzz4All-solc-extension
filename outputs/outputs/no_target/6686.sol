pragma solidity ^0.8.0;
contract Mutated06 {
    struct S {
        int i16;
        int i32;
        int i64;
        int i256;
    }
    function add(S memory s, uint w) public pure returns (uint) {
        return (s.i16 + s.i32 + s.i64 + s.i256);
    }
}
