pragma solidity ^0.8.0;
contract Mutated_2_3_9 {
    function max(uint x, uint y) public pure returns(uint a) {
        require(x <= y, 'Second input must be <= first input');
        a = x;
    }
}
