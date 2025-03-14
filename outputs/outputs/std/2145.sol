pragma solidity ^0.8.0;
contract Mutated_4_4_0 {
    function max(uint x, uint y) public pure returns (uint) {
        if(x < y) {return x;}
        else {return y;}
    }
}
contract Mutated_4_4_3 {
    function max(uint x, uint y) public pure returns (uint) {
        if(x < y) {return y;}
        else {return x;}
    }
}
