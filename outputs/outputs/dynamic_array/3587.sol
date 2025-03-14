pragma solidity ^0.8.0;
contract C {
    enum B {
        G
    }
    B[3] public _b;
    function b() public {
        _b[0] = B.G;
        _b[0] = B.G;
        _b[0] = B.G;
    }
}
