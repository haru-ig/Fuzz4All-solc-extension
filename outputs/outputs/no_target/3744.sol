pragma solidity ^0.8.0;
contract E {
    uint64 d;
    uint24 c;
    function g(uint256 a) public {
        uint256 b = uint256(c) + uint(a);
        uint256 c = uint256(a) + uint(0x41) - 0x2000;
        uint64 d = (uint64(c) + uint(a) + 1) * 0xFFFFF;
    }
}
