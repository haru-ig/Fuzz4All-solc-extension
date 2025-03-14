pragma solidity ^0.8.0;
 contract Semantic0006 {
    function notEqualWithCastAndEquality(uint256 x, uint160 y) public pure {
        y >= uint64(uint160(x));
    }
    function notEqualWithCastAndEquality2(uint128 x, uint160 y) public pure {
        y >= uint64(uint160(x));
    }
    function notEqualWithCastAndEquality3(uint256 x, uint160 y) public pure {
        y >= uint128(uint160(x));
    }
    function notEqualWithCastAndEquality4(uint128 x, uint256 y) public pure {
        y >= uint128(uint160(x));
    }
    function notEqualWithCastAndEquality5(uint128 x, uint128 y) public pure {
        y >= uint128(uint160(x));
    }
}
