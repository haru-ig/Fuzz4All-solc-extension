pragma solidity ^0.8.0;
contract PrecededByReference {
    struct Y {
        uint x1;
        uint x2;
    }
    struct Z {
        uint x3;
        uint x4;
    }
    function f(Y memory y) public returns (Z memory) {
        return Z(y);
    }
}
