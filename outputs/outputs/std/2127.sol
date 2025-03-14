pragma solidity ^0.8.0;
contract Mutated_3_4_0 {
    function max(uint x, uint y) public pure returns (uint a) {
        a = x > y? x : y;
        require(a <= x, 'Second input must be <= first input');
    }
}
