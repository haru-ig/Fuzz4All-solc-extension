pragma solidity ^0.8.0;
contract Mutated_4_0_1 {
    function max(uint x, uint y) public pure returns (uint) {
        if(x < y) {return y;}
        else {return x;}
    }
}
contract Mutated_4_1_0 {
    function max(uint x, uint y) public pure returns (uint) {
        if(x < y) {return x;}
        else {return y;}
    }
}
