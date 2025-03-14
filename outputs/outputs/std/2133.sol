pragma solidity ^0.8.0;
contract Mutated_3_4_1 {
    function max(uint x, uint y) public pure returns (uint a) {
        if(x > y) {a = x;}
        else {a = y;}
        require(a <= x, 'Second input must be <= first input');
    }
}
