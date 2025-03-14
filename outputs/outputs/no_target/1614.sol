pragma solidity ^0.8.0;
 contract Semantic0007 {
    function notEqualWithoutCastAndEquality(uint256 x, uint160 y) public pure {
        require(y >= uint64(uint160(x)));
        y >>= 32;
    }
    function notEqualWithoutCastAndEquality2(uint128 x, uint160 y) public pure {
        require(y >= uint64(uint160(x)));
        y >>= 32;
        y >>= 32;
    }
    function notEqualWithoutCastAndEquality3(uint256 x, uint160 y) public pure {
        require(y >= uint128(uint160(x)));
        y >>= 32;
        y >>= 32;
        y >>= 32;
    }
    function notEqualWithoutCastAndEquality4(uint128 x, uint256 y) public pure {
        require(y >= uint128(uint160(x)));
        y >>= 32;
        y >>= 32;
        y >>= 32;
        y >>= 32;
    }
    function notEqualWithoutCastAndEquality5(uint128 x, uint128 y) public pure {
        require(y >= uint128(uint160(x)));
        y >>= 32;
        y >>= 32;
        y >>= 32;
        y >>= 32;
        y >>= 32;
    }
}
