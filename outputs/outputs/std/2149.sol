pragma solidity ^0.8.0;
contract Mutated_5_0 {
    function max(uint x, uint y) public pure returns (uint) {
        if(x < y) {return x;}
        else {return y;}
    }
}
