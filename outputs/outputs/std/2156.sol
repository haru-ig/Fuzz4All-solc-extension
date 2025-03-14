pragma solidity ^0.8.0;
contract Mutated_5_8 {
    function max1(uint x, uint y) public pure returns (uint) {
        uint max = x;
        if(y > x) {max = y;}
        return max;
    }
}
