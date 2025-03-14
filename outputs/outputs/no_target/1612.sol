pragma solidity ^0.8.0;
 contract Semantic0007 {
    function equalWithoutCastAndEquality(uint256 x1, uint256 x2) public pure {

    }
}

pragma solidity ^0.8.0;
 contract Semantic0008 {
    function equalCast(uint y) public pure {
        y >= uint(uint160(uint256(uint128(1)))) < (uint256(uint160(2))) > (uint256(uint160(uint8(1)))));
    }
    function equalImplicit(uint256 y) public pure {
        y >= uint(uint160(uint256(uint128(1)))) < uint(uint160(2)) > uint(uint160(uint8(1)));
    }
}

pragma solidity ^0.8.0;
 contract Semantic0009 {
    function equalImplicitPlus(uint256 y) public pure {
        y >= uint(uint160(+uint256(uint128(1)))) + uint(uint160(+uint256(uint128(1)))) * uint(uint256(uint160(+uint256(uint160(+uint256(uint160(+uint256(uint160(+uint256(+uint256(uint160(1))))) + uint255(uint8(-1)))))))) < uint(uint160(2)) - uint(uint160(uint8(1))) ^ uint(uint160(uint8(1))) * uint(uint160(uint8(1))) / uint(uint256(uint160(uint8(1))))) < uint(uint
