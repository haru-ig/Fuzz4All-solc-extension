pragma solidity ^0.8.0;
contract Baz {
    uint a = -1;
    uint256 b;
    uint8 c = 2;
    uint16 d = 3;
    uint32 e;
    uint64 f;
    uint128 g;
    function h(uint256 x) public pure returns (uint256) {
        a += x;
        a -= x;
        return a;
    }
}
