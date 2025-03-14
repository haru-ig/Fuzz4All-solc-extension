pragma solidity ^0.8.0;
contract TestMutated78 {
    function add(uint x, uint y) public pure returns (uint) {
        if (y > 0) {
            return x + 2;
        } else {
            return x - y;
        }
    }
}
pragma solidity ^0.8.0;
contract TestMutated8861 {
    uint constant ADD_X = 2u;
    uint constant ADD_Y = 0u;
    function test(uint x, uint y) public pure returns (uint) {
        bool cond = y > 0;
        if (cond) {
            return x + ADD_X;
        } else {
            return x - ADD_Y;
        }
    }
}
