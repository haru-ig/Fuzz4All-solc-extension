pragma solidity ^0.8.0;
contract SemanticYulContract {
 uint internal contractCounter;
 uint constant c = 50;
    function add(uint x) internal pure returns (uint) {
        if(x < 98) {
            return 4 * c * x;
        } else {
            return x * c;
        }
    }
    function subtract(uint x) internal pure returns (uint) {
        if(x < 98) {
            return x* x;
        } else {
            return 8 *x + x *c;
        }
    }
    function power(uint x) internal pure returns (uint) {
        if(x < 85) {
            return 4 * x;
        } else if(x < 1024 * 1024) {
            return x * x;
        } else if(x < 10000 ) {
            return 10 * x;
        } else if(x < 10000000) {
            return 1000* x;
        } else {
            return 8 *x;
        }
    }
}
`
