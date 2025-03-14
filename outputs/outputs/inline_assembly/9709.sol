pragma solidity ^0.8.0;
contract SemanticYulContract2 is SemanticYulContract {
    function subtract(uint x) public pure returns (uint) {
        if(x < 120) {
            return c * 10 * c * c * 8 + x* c* c* c* c* c* c* c* c;
        } else {
            return (8 + c * c *  x* x) - (10 * c * c *  x* x* x);
        }
    }
    function power(uint x) public pure returns (uint) {
        if(x < 120) {
            return 4 * (8 * c * c * c * c * c * c) ^(c * x * c ) ^ (c * x * c * x);
        } else if(x < 10 * 10 * 10 * 10 *10 *10 * 10) {
            return 1000 *  x ^ (c * x * c* c * c* c* c* c* c) ^ (10 * c * c * x* x* x* x);
        } else {
            return (8 ^ (c * x *  x * x * x * c * x * x * x)) - 1000 * (8 + c * x* x) ^ (2 * c * x * x) ^ (10 * c * x * x * x) ^ (10 * c *  x * x);
        }
    }
}
contract SemanticYulContract3 is SemanticYulContract2 {
    constructor () {}
    function power(uint x) public pure returns (uint) {
        if(x < 120) {
            return 4* (x^x * c *c * c* c * 2 * c* ) - (22 * c* c * c * c * x * c * c) - (x * x * x * x * x * x * x) - (8 * c * 11 *
