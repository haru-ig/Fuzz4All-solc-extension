pragma solidity ^0.8.0;



contract PrecededByReference {
    struct X {
        * memory x;
        bool flag;
    }

    function f(X memory x) public returns (X memory) {
        X memory y = x;
        y.x1 = 5;
        y.x2 = 6;
        return y;
    }
}
