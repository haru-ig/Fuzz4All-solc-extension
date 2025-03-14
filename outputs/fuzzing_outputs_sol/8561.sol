pragma solidity ^0.8.0;
contract SubtractExample20 {
    function subtract(uint x, uint y) public pure returns (uint z) {
        int sub = y - x;
        z = uint(sub & uint(-sub));
    }
}
