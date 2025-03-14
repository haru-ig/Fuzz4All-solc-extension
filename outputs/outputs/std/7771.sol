pragma solidity ^0.8.0;
contract PrecededByReference {
    struct X {
        uint x;
    }
    function f(X x) public {
        x.x = 0;
    }
}
