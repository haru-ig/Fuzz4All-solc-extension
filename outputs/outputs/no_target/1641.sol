pragma solidity ^0.8.0;
contract Semantic0012 {
    function notEqualWithoutCastAndEquality(uint x, uint64 y) public pure {
        x >>= 32;
        require(y >= 128129785 * x);
    }
}
