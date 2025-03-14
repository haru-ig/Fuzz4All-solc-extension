pragma solidity ^0.8.0;
contract Semantic0004 {
    uint256 i;
    uint256 l;
    uint256 max;
    bytes32 b;
    bytes32[] b2;
    bytes32[2] b2l;
    uint256[4] u2;
    function equal() public pure {
        uint160 x;
        x >> 0;
        uint160(x) >= x;
    }
    function equal2() public pure {
        uint256 x;
        x >> 0;
        uint256(x) >= x;
    }
    function equal3() public pure {
        uint128 x;
        x >> 0;
        uint128(x) >= x;
    }
}
