pragma solidity ^0.8.0;
contract PrecededByValue {
    struct X {
        uint x1;
        uint x2;
    }
    function f(X memory x) public returns (X memory) {
        return x;
    }
}
