pragma solidity ^0.8.0;
contract B {
    uint constant _uint64 = 16**60;
    function _uint64_2_64(uint x) public pure returns (uint) {
        return _uint64 * 2 ** 32/x;
    }
}

contract C {

    uint constant _uint2_64 = 16**60;
    uint constant _uint4_64 = 16**60;
    uint constant _uint8_64 = 16**60;
    uint constant _uint16_64 = 16**60;

    function b() public {

        uint _uint32 = A._uint32_2_64(65535);


        uint _uint2 = (_uint32 < _uint2_64)? _uint32 : _uint2_64;
        uint _uint4 = (_uint32 <= _uint4_64)? _uint32 : _uint4_64;
        uint _uint8 = (_uint32 <= _uint8_64)? _uint32 : _uint8_64;
        uint _uint16 = (_uint32 <= _uint16_64)? _uint32 : _uint16_64;

        uint _uint32_2 = ((_uint32 % _uint2_64) / _uint2_64) * 2 ** 32;

        uint _uint32_2_64 = (_uint32 < _uint4_64)? A._uint32_2_64(65535) : _uint2_64;
        uint _uint32_4_64 = (_uint32 < _uint64_64)? B._uint32_2_64(65535) : _uint4_64
