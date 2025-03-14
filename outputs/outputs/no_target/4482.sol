pragma solidity ^0.8.0;
contract C {
    bool state;
    struct S {
        uint a;
        constructor(uint _a) { a = _a; }
    }
    function myFunction() pure public returns (S b) {
        unchecked {
            b = new S(1);
        }
    }
}
