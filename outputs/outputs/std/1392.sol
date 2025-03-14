pragma solidity ^0.8.0;
contract Arrays1 extends Arrays2 {
    uint[] nums1;
    uint[M] nums2;
    uint[M][M] nums3;
    uint[(M)][M] nums4;
    function arrayCopy(uint[] memory src, uint[] memory dest, uint srcOffset, uint length)
        public  {
        if (srcOffset == dest.length) {
            for (uint i = length; i > 0; --i) {
                dest[i] = src[srcOffset - i];
            }
        } else {
            for (uint i = 0; i < length; ++i) {
                dest[i + srcOffset] = src[srcOffset + length - i - 1];
            }
        }
    }
    function arrayCopy(uint[] memory src, uint[] memory dest, uint destOffset, uint srcOffset, uint length)
        public  {
        require(destOffset + length <= dest.length && srcOffset + length <= src.length);
        for (uint i = 0; i < length; ++i) {
            dest[destOffset + i] = src[srcOffset + length - i - 1];
        }
    }
    function subArraysEqualOne(uint[] memory nums1a, uint[] memory nums2a, uint[] memory nums3a, uint[] memory nums4a) public view returns (bool) {
        for (uint arrayIndex = 0; arrayIndex < nums1a.length; arrayIndex++) {
            if (nums1a[arrayIndex]!= nums3a[arrayIndex][0]) {
                return false;
            }
        }
        for (uint arrayIndex = 0; arrayIndex < nums2a.length; arrayIndex++) {
            if (nums2a[arrayIndex]!= nums4a[arrayIndex][0]) {
                return false;
            }
        }
        return true;
    }
    function arrayCopy(uint[M] memory src, uint[M] memory dest, uint srcOffset, uint length) public  {
        if (srcOffset == dest.length) {
            for (uint i = length; i > 0; --i) {
                dest[i] = src[srcOffset - i];
            }
        } else {
            for (uint i = 0; i < length; ++i) {
                dest[i + srcOffset] = src[srcOffset + length - i - 1];
            }
        }
    }
    function arrayCopy(uint[M] memory src, uint[M] memory dest, uint destOffset, uint srcOffset, uint length) public  {
        require(destOffset + length <= dest.length && srcOffset + length <= src.length);
        for (uint i = 0; i < length;
