pragma solidity ^0.8.0;
contract NewMult is Mult {
    function add(uint x, uint y) public pure returns (uint z) {
        z = x + y;
        return z;
    }
    function subtract(uint x, uint y) public pure returns (uint z) {
        z = x - y;
        return z;
    }
    function multiply(uint x, uint y) public pure returns (uint z) {
        z = x * y;
        return z;
    }
    function divide(uint dividend, uint divisor) public pure returns (uint z) {
        z = dividend / divisor;
        return z;
    }
    function equal(uint x, uint y) public pure returns (bool) {
        if (x == y) {
            return true;
        } else {
            return false;
        }
    }
}
