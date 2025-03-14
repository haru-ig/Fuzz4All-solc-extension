pragma solidity ^0.8.0;
contract Semantic0036 {
    function div_() public pure {
        uint x = 0;
        if (false) {
            x += x / 2;
        } else {
            x += x * 2;
        }
        x = (x + x + x) / (x / x + x);
    }
}





contract Solidity0038 {
    uint160 constant public NUM_INTS = 10;
    int constant public MAX_INT = 100000000000000000000000;
    int constant public MIN_INT = -10000000000000000000000;
    bool constant public TWO_BITS = true;

    constructor() public pure {}

    function func0() public pure returns (int, uint160) {
        int v = 0;
        uint160 w = NUM_INTS;
        uint160 x = 256;
        v << w;
        (uint256 l, uint256 r) = v;

        return (w, w);
    }

    function func1(int z) public pure returns (uint160) {
        int v = z;
        uint160 w = NUM_INTS;
        uint160 x = 256;
        v >> w;
        (uint256 a, uint256 b) = v;

        return w;
    }

    function func2(uint160 x, uint y) public pure returns (int) {
        if (TWO_BITS) {
            return (x >> 2);
        } else {
            return (x >> 1);
        }
    }

    function func3(uint160 y) public pure returns (bool) {
        uint160 x = 256;
        if (x > 0) {
            return true;
        } else {
            return false;
        }
    }
}



pragma solidity ^0.8.0;
contract Semantic0039 {
    uint160 constant public
