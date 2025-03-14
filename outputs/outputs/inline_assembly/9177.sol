pragma solidity ^0.8.0;
contract B {
    uint constant public _uint32 = 16**64;
    uint public stateVar;
    uint constant public x = 16*16 + _uint32;
    function changeStateVar() public {
        stateVar = A.mutated(x);
    }
}
contract A {
    uint constant public _uint64 = 16**64;
    uint public stateVar;
    uint constant public x = 16*16 + _uint64;
    function changeStateVar() public {
        stateVar = B.mutated(x);
    }
}
