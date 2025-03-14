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
            return c * (x*x);
        } else if(x < 10 * 10 * 10 *10 *10 *10 *10) {
            return 1e20 * x;
        } else {
            return 1e15 * c * c;
        }
    }
}
contract CallStack {
    uint public stackCounter;
    uint internal contractCounter;
    function sum(uint _a, uint b) public returns (uint) {
        return _a + b;
    }
}
contract CallStack {
    uint public stackCounter;
    uint internal contractCounter;
    function sum(uint _a, uint b) public returns (uint s){
            uint x = _a + b;
            s = x;
            return;
        }
    uint constant c = 50;
    function subtract(uint z) public pure returns (uint s){
            uint x = z / 60;
            if(x < 120) {
                s = c * 8 + x*c;
            } else {
                s = x* c - 8;
            }
            return;
        }
    function power(uint x) public pure returns (uint s){
            uint z = x / 60;
            uint y = z / 60;
            if(x < 1
