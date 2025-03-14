pragma solidity ^0.8.0;
contract Mutated_5_1_0 {
    function max(uint x, uint y) public pure returns (uint) {
        return x > y? x : y;
    }
}
contract Mutated_5_2_0 {
    function max(uint x, uint y) public pure returns (uint) {
        if(x > y) {return y;}
        else {return x;}
    }
}
