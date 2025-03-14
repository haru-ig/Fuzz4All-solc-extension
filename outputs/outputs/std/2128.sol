pragma solidity ^0.8.0;
contract Mutated_3_5_5 {
    function max(uint x, uint y) public pure returns (uint a) {
        if(x > y) {a = x;}
        else {a = y;}
        if(a > x) {a = x;}
    }
}
