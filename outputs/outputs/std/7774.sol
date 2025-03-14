pragma solidity ^0.8.0;
contract PrecededByReference {
    struct X {
        uint x1;
    }
    function f(X memory x) public { x.x1 = -x.x1; }
}
