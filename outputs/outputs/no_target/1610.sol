pragma solidity ^0.8.0;
 contract Semantic0007 {
    function equalWithCastAndEquality(uint256 x, uint160 y) public pure {
        x % int160(uint64(y));
    }
    function equalWithCastAndEquality2(uint256 x, uint160 y) public pure {
        x % int32(uint64(y));
    }
    function equalWithCastAndEquality3(uint256 x, uint160 y) public pure {
        x % uint256(uint64(y));
    }
    function equalWithCastAndEquality4(uint256 x, uint160 y) public pure {
        x % uint128(uint64(y));
    }
    function equalWithCastAndEquality5(uint256 x, uint128 y) public pure {
        x % uint128(uint64(y));
    }
}
