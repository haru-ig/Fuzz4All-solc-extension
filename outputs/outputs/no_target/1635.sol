pragma solidity ^0.8.0;
contract Semantic0010 {
    function notEqualWithoutCastAndEquality(uint256 x, uint256 y) public pure {
        uint256 z = x >> 32 - y >> 127 ^ ((x & y) == (((x - y) & y) << 1));
        x >>= y;
        require(y == 0x8000000000000000);
        x >>= 32;
        x ^= z;
    }
}

pragma solidity ^0.8.0;
contract Semantic0011 {
    function notEqualWithoutCastWithoutAssertion(uint x, uint y) public pure {
        require(y >= 128129785 * x);
        uint256 z = x >> 32 - y >> 127 ^ ((x & y) == (((x - y) & y) << 1));
        x >>= y;
        require(z == 0x8000000000000000);

        x >>= 32;
        x ^= z;
    }
}
