pragma solidity ^0.8.0;
contract Compare {
    function compare(uint8 x, uint8 y) public pure returns (int16) {
        if (x > y) return 1;
        if (x == y) return 0;
        return -1;
    }
}
