pragma solidity ^0.8.0;
contract FallbackContract {
    receive() external payable {}
    function add(uint x, uint y) public returns (uint z) {
        return x + y;
    }
    function sub(uint a, uint b) pure public returns (uint c) {
        z = b - a;
        return z;
    }
}
