pragma solidity ^0.8.0;
contract Random {

    uint256 private seed;
    constructor() {
        seed = block.timestamp;
    }
    function getUintBytes(uint number) public view returns (uint32 r1, uint32 r5, uint32 r9) {
        uint x = seed + block.timestamp;
        uint256 x256 = uint256(x);
        x256 = uint256(x256 * 17.324421896757870757555850779189295226015458278071695483917471);
        seed = x256 % number;
        r1 = uint32(seed >> 8);
        r5 = uint32(seed & 0xff);
        r9 = uint32(seed >> 16);
    }
    function getUint256Bytes(uint number) public view returns (uint32 r1, uint32 r5, uint32 r9) {
        uint x = seed + block.timestamp;
        uint256 x256 = uint256(x);
        x256 = uint256(x256 * 17.324421896757870757555850779189295226015458278071695483917471);
        seed = x256 % number;
        r1 = uint32(seed >> 8);
        r5 = uint32(seed & 0xff);
        r9 = uint32(seed >> 16);
    }
}
contract Test
{
    uint val = 1;

    function test() public {
        val *= val;
    }

    function test2() public {
        val /= val;
    }
}
