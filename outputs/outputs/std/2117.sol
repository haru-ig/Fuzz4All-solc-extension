pragma solidity ^0.8.0;
contract Mutated_2_3_5 {
    function max(uint x, uint y) public pure returns (uint a) {
        a = x > y? x : y;
        require(a <= x, 'Second input must be <= first input');
    }

}
