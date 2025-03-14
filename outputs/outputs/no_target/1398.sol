pragma solidity ^0.8.0;
contract Simple {
    function bad_pure_call(uint256 a) external pure {
        uint256 x = 0;
        unchecked {
            unchecked {
                x = uint256(uint8(0x55));
                x = uint256((uint8(0x55) >> 8));
                x = uint256((uint8(0x55) >> 16));
                x = uint256((uint8(0x55) >> 24));
                x = uint256((uint8(0x55) << 8));
                x = uint256((uint8(0x55) << 16));
                x = uint256((uint8(0x55) << 24));
                x = uint256((uint8(0x55) >>> 1));
                x = uint256((uint8(0x55) << 3));
            }
        }
        uint256 v = uint256(a) ^ bad_pure_call(bad_pure_call(uint256(uint8(0x55)) ^ uint256(uint8(0x55) >> 8)) ^ uint256(uint8(0x55) >> 16)) ^ uint256(uint8(0x55) >> 24)) ^ uint256(uint8(0x55) << 8)) ^ uint256(uint8(0x55) << 16)) ^ uint256(uint8(0x55) << 24)) ^ uint256(uint8(0x55) >>> 1) ^ uint256(uint8(0x55) << 3);
        Assert.equal(bad_pure_call(bad_pure_call(v ^ uint256(uint8(0x55)) ^ a) ^ uint256(uint8(0x55) >> 8)) ^ uint256(uint8(0x55) >> 16)) ^ uint256(uint8(0x55) >> 24)) ^ uint256(uint8(0x55)
