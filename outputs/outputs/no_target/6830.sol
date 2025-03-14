pragma solidity ^0.8.0;
contract TestMutated980 {
    function div(uint x, uint y) public pure returns (uint) {
        uint z0 = 0;
        uint z1;
        uint z2;
        if (z1 < 0) {
            uint z3 = div(z1, x);
            return div((-z3 + y), y);
        } else {
            uint z4 = div(z1, y);
            uint z3 = 0 + z4;
            return z3;
        }
    }

    function modulo(uint x, uint y) public pure returns (uint) {
        return x / y;
    }
}
