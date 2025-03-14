pragma solidity ^0.8.0;
contract Semantic0009 {
    function notEqualWithoutCastAndEquality(uint256 x, uint y) public pure {
        require(y >= 128129785 * x);
        x >>= 32;
    }
}
