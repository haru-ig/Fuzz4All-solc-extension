pragma solidity ^0.8.0;
contract Mutated_5_5 {
    function max3(uint x, uint y) public pure returns (uint) {
        uint z = x;
        x = x >= 1? y : x;
        x = x >= x? x : x;
        z = x >= x? 1 : x;
        return x + z;
    }
}
