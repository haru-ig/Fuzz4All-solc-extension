pragma solidity ^0.8.0;
contract B {}
contract A { uint256[3] _array; }
contract C {
    struct B2 { uint k; uint256[] _array; }

    function f(A a, B2 x) public{
        x;
        assembly { k := 0 }
    }
