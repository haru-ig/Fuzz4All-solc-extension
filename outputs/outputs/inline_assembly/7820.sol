pragma solidity ^0.8.0;
contract L15 {
    function mutatedMultiply(uint x, uint y) public pure returns (uint) {
        x *= 10e20;
        return x * (10e20 * x);
    }
}
contract L16 {
    function mutatedMultiply(uint x, uint y) public pure returns (uint) {
        return 1;
    }
}
