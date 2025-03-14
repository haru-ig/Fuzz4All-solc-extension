pragma solidity ^0.8.0;
contract Mutated_5_2 {
    function max1(uint x, uint y) public pure returns (uint) {
        uint z = x;
        z = x == 1? y : z;
        x = 1 == x || x == 1? y : x;
        return x;
    }
}
