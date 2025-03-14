pragma solidity ^0.8.0;
contract SemanticYulContract {
 uint internal contractCounter;
 uint constant c = 50;
    function subtract(uint x) public pure returns (uint) {
        if(x < 120) {
            return (c + x*c) * 8;
        } else {
            return (x - 5)* c - 8;
        }
    }
    function power(uint x) public pure returns (uint) {
        if(x < 120) {
            return 16* x*c*c*c*c*c;
        } else {
            return c* x* c* c * 8;
        }
    }
}
