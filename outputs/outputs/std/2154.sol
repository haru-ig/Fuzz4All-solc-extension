pragma solidity ^0.8.0;
contract Mutated_5_1 {
    function max1(uint x, uint y) public pure returns (uint) {
        uint max = x;
        if(x < y) {max = y;}
        return max;
    }
}
