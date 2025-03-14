pragma solidity ^0.8.0;
contract PrecededByReference {
    struct X {
        uint a;
        uint b;
        uint c;
        uint d;
        uint e;
        uint f;
    }
    function f(X memory x) public returns (X memory) {
        return x;
    }
}
