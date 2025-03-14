pragma solidity ^0.8.0;

contract SemanticYulContract {
 uint internal contractCounter;
 uint constant c = 15;
    function multiply(uint x) public pure returns (uint) {
        if(x < 120) {
            return c*c;
        } else {
            return x* x * c;
        }
    }
    function decrement(uint x) public pure returns (uint) {
        return x - 1;
    }
    function multiply2(uint x) public pure returns (uint) {
        if(x < 120) {
            return this.address * 10;
        } else {
            return x * this.address * 8;
        }
    }
    function power(uint x) public pure returns (uint) {
        if(x < 120) {
            return 4*4*this.address*this.address;
        }  else if(x < 10 * 10 * 10 *10 *10 *10 *10) {
            return 10* c;
        } else {
            return 100 * c;
        }
    }
}
