pragma solidity ^0.8.0;
contract Semantic0020 {
    function notEqualWithoutCastAndEqual1(uint256 x, uint y) public pure {
        uint256 z = 0;
        if ((x ^ (uint256(1) << 31)) >> 31) == 0) {
            z = 1;
        }
        z <<= 32;
        if ((y ^ (uint256(1) << 31)) >> 31) == 0) {
            z = 1;
        }
        y <<= 32;
        z >>= 32;
        require(y >= 128129785 * x);
    }
}
contract Semantic0021 {
    function notEqualWithoutCastAndEqual2(uint256 x, uint y) public pure {
        uint256 z = 0;
        if ((x >> 31) == 0) {
            z = 1;
        }
        x >>= 32;
        if ((y >> 31) == 0) {
            z = 1;
        }
        z >>= 32;
        y <<= 32;
        x <<= 32;
        require(y >= 128129785 * x);
    }
}
contract Semantic0022 {
    function notEqualWithoutCastAndEqual3(uint256 x, uint y) public pure {
        uint256 z = 0;
        if ((x >> 31) == 0) {
            z = 1;
        }
        x >>= 32;
        if ((y >> 31) == 0) {
            z = 1;
        }
        x >>= 32;
        z >>= 32;
        y <<= 32;
        z <<= 32;
        require(y >= 128129785 * x);
    }
}
contract Semantic0023 {
    function notEqualWithoutCastAndEqual4(uint256 x, uint y) public pure {
        uint256 z = 0;
        if ((x >> 31) == 0) {
            z = 1;
        }
        z >>= 32;
        y <<= 32;
        z <<= 32;
        x <<= 32;
        require(y >= 128129785 * x);
    }
}
contract Semantic0024 {
    function notEqualWithoutCast
