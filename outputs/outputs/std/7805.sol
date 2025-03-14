pragma solidity ^0.8.0;
contract Convert {
    function toUintArr(string memory value) internal pure returns(uint[] memory) {
        uint[] memory result = new uint[](1);
        (result[0]) = (uint(uint8(uint2str(value))));
    }
    function toUintArr2(string memory value) internal pure returns(uint[] memory) {
        uint[] memory result;
        (result) = (toUintArr(value));
    }
    function toUint(string memory value) internal pure returns(uint) {
        uint uintVal;
        uint8 uintVal2;
        for(uint i = 0; i < value.length; i++) {
            uintVal2 = (uintVal2 * 10) + uint8(uint(value[i]));
        }
        uintVal = uint
