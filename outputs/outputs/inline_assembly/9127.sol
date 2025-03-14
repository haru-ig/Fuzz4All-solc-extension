pragma solidity ^0.8.0;
contract C{
    function getResult(uint) public pure returns (uint) {
        uint x = 2 * block.timestamp;
        x = x + block.timestamp;
        uint y = x + (x * x);
        uint z = y+y+y;
        return z;
    }
}
