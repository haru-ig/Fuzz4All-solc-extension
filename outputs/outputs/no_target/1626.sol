pragma solidity ^0.8.0;
contract Semantic0005 {
    function equalWithoutCastAndEquality(uint128 x, uint160 y) public pure {
        require(y >= uint128(uint80(x)));
        x >>= 80;
    }
}
