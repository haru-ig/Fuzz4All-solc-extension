pragma solidity ^0.8.0;
contract Semantic0007 {
    function notEqualWithCastAndEquality(uint256 x, uint160 y) public pure {
        require(uint128(uint256(y)) >= uint128(x));
        uint256 r = uint256(uint128(x)) / uint256(uint128(y));
        r;
    }
    function notEqualWithCastAndEquality2(uint256 x, uint160 y) public pure {
        require(uint256(uint256(y)) >= uint256(x));
        uint256 r = uint256(uint256(x)) / uint256(uint256(y));
        r;
    }
}
