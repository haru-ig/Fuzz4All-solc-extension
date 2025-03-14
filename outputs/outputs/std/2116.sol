pragma solidity ^0.8.0;
contract Mutated_2_3_5{
    function max(uint x, uint y) public pure returns (uint k) {
        require(x >= y, "X must be not less then Y");
        k = x < y? x : y;
    }
}
