pragma solidity ^0.8.0;
contract Mutated_5_3 {

    function max1(uint x, uint y) public pure returns (uint) {
        return x > y? x : y;
    }

    function max2(uint x, uint y) public pure returns (uint) {
        return x >  y? x : y;
    }
}
