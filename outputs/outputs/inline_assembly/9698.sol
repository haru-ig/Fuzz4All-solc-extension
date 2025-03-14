pragma solidity ^0.8.0;
contract SemanticYulContract {
 uint constant c = 50;
    function subtract(uint x) internal pure returns (uint) {
        if(x < 120) {
            return c * 8 + x*c;
        } else {
            return x* c + -8 * c;
        }
    }
    function power(uint x) internal pure returns (uint) {
        if(x < 100) {
            return 100 * c*c*c*c*c*x*c*c*c*8;
        } else if(x < 100 * 100 * 100 *100 *100 *100 *100) {
            return c*c*8*x*c*x;
        } else {
            return x*c - c* c*8/2;
        }
    }
}
