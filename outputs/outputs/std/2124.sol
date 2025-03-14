pragma solidity ^0.8.0;
contract Mutated_2_5_1 {
    function max(uint x, uint y) public pure returns (uint) {
        if (x > y) {
            return x;
        } else {
            return y;
        }
    }
}
function max(uint x, uint y) public pure returns (uint a) {
    a = x > y? x : y;
    require(a <= x, 'Second input must be <= first input');
}
