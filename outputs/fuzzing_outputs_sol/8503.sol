pragma solidity ^0.8.0;
contract CallerExample6 {
    uint internal constant MAX = 100000000;
    uint internal constant MIN = 1;
    event Log(uint value);
    function subtract(uint x, uint y) public pure returns(uint z) {
        (uint a, uint b) = (x, y);
        return a < b && z < MAX? a - b - 1 : b;
    }
}
