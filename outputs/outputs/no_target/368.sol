pragma solidity ^0.8.0;
contract MutatedSemantic3 {
    mapping (uint256 => uint256) public x;
    function balance3(uint256 _val) public returns(uint8, uint256) {
        uint8 z;
        uint256 w;
        uint8 x = 1;
        uint16 y;
        uint8 x = 0xFFF;
        uint2258 y = uint(0x00000);
        x = 1 << 1024;
        return (x, w);
    }
}
