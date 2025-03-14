pragma solidity ^0.8.0;
contract C {
    enum B {
        G
    }
    B[3, 2] private _b;
    function b() public {
        B[4, 5] storage d = _b;
    }
}
