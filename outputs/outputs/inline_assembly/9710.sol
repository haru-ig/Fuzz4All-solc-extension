pragma solidity ^0.8.0;
contract SemanticYulContract {
 uint internal contractCounter;
 uint constant c = 50;
    function subtract(uint z) public pure returns (uint) {
        uint x = z / 60;
        if(x < 120) {
            return c * 8 + x*c;
        } else {
            return x* c - 8;
        }
    }
    function power(uint x) public pure returns (uint) {
        uint z = x / 60;
        uint y = z / 60;
        if(x < 120) {
            return 4*c*c*c*c*x*c;
        } else if(x < 10 * 10 * 10 * 10 *10 *10 *10) {
            return 1000* c*x*c;
        } else {
            return c* c*x* c* c * 8;
        }
    }
}
