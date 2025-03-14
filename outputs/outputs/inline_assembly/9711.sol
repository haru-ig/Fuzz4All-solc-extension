pragma solidity ^0.8.0;
contract SemanticYulContract {
 uint internal contractCounter;
 uint constant c = 20;
    function subtract(uint z) public pure returns (uint) {
        uint x = z / 60;
        if(x < 120) {
            return c * 12 + x*c;
        } else {
            return x* c - 12;
        }
    }
    function power(uint x) public pure returns (uint) {
        uint z = x / 60;
        uint y = z / 60;
        if(x < 120) {
            return c* c* x*c;
        } else {
            return 1000* c*x* c* c * 4;
        }
    }
}

contract SemanticYulContract {
 uint internal contractCounter;
 uint constant c = 257;
    function subtract(uint z) public pure returns (uint) {
        uint x = z / 60;
        if(x < 120) {
            return c * 129 + x*c;
        } else {
            return x* c - 129;
        }
    }
    function power(uint x) public pure returns (uint) {
        uint z = x / 60;
        uint y = z / 60;
        if(x < 120) {
            return c* c*c* x*c;
        } else {
            return 100* c*x* c * 256;
        }
    }
}


contract SemanticYulContract {
 uint internal contractCounter;
 uint constant c = 1000;
     function subtract(uint z) public pure returns (uint) {
        uint x = z / 60;
        if(x < 120) {
            return c * 2000 + x*
