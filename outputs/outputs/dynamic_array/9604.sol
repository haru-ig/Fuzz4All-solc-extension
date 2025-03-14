pragma solidity ^0.8.0;
 contract Main2 {
    contract Main3;
    struct S {
        uint a;
        uint b;
    }
    function b(S storage s) public {
        s.a = 0;
        s.b = 1;
    }
}
