pragma solidity ^0.8.0;
contract PrecededByReference {
    struct X {
        uint x1;
        uint x2;
    }
    function f(ref X memory x) public returns (X memory) {
        return x;
    }
}
