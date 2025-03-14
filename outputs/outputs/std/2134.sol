pragma solidity ^0.8.0;
contract Mutated_3_4_0 {
    function max(uint x, uint y) public pure returns (uint a) {
        if(x < y) {a = y;}
        else {a = x;}
        require(a <= y, 'Second input must be <= first input');
    }
}
