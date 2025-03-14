pragma solidity ^0.8.0;
contract Semantic0009 {
    function notEqualWithoutCastAndEquality(uint256 x, uint256 y) public pure {
        require(uint160(y) >= uint160(x));
        x >>= 32;
    }
}

contract Semantic0010 {
    function notEqualWithoutCastAndEquality2(uint128 x, uint256 y) public pure {
        require(uint160(y) >= uint160(x));
        y >>= 32;
        y >>= 32;
    }
}
