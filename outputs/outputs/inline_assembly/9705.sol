pragma solidity ^0.8.0;
contract SemanticYulContract {
 uint internal contractCounter;
 uint constant c = 100;
    function subtract(uint x) public pure returns (uint) {
        if(x < 120) {
            return 10 * c * 8 + x* c ;
        } else {
            return x* 10-8;
        }

    }
    function power(uint x) public pure returns (uint) {
        if(x < 120) {
            return 2000 * c * 8 + 10 * c *x* c*8;
        } else if(x < 10 * 10 * 10 *10 *10 *10 *10) {
            return 1000* c*x*c;
        } else {
            return c* c*x* c* c * 8;
        }
    }
}



contract SemanticYulContract {
uint constant c = 1000;
    function power(uint x) public pure returns (uint) {
        if(x < 120) {
            return c* x* c* 4*8;
        } else if(x < 10 * 10 * 10 *10 *10 *10 *10) {
            return 1000*c*x*c;
        } else {
            return c* x* c* 8;
        }
    }
}
