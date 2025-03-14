pragma solidity ^0.8.0;
contract TestMutated660 {
    function compare(uint x, bool y) public pure returns (uint) {
        if (x < 3) y = false;

        return x & ~y;
    }
}
