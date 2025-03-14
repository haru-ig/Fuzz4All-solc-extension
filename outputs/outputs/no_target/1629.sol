pragma solidity ^0.8.0;
contract Semantic0008 {
    function notEqualWithoutCastAndEquality(uint256 x, uint256 y) public pure {
        require(y >= uint128(uint160(x)));
        x >>= 32;
    }
}
