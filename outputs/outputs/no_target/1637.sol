pragma solidity ^0.8.0;
contract Semantic0010 {
    function notEqualWithoutCastAndEquality(uint256 x, uint y) public pure {
        x >>= 32;
        require(y >= 128129785 * x);
    }
}

pragma solidity ^0.8.0;
contract Semantic0011 {
    function notEqualWithoutCastAndEquality(uint256 x, uint y) public pure {
        y >>= 32;
        x <<= 32;
        require(y >= 128129785 * x);
    }
}
