pragma solidity ^0.8.0;


contract C {
    enum B {
        G
    }
    B public _b;
    function b() public {
        _b = new B[](1);
        _b[0] = B.G;
    }
}
