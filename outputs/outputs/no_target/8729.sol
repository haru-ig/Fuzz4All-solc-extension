pragma solidity ^0.8.0;
contract EquivalentABIv08WithAbiV01WithoutMutatedAndChangedToAbiV2 {
    uint256 x;
    constructor(uint _x) {
        x = _x;
    }
    function f() public {
        address selfAddress = address(this);
        uint32 i32 = 25;
        uint32 i32_not = 76;
        bytes32 b32 = 353;
        bytes32 b32_not = 442;
        address accountAddress = 0xDEAD1212EC5EF5A669D686341FF2E633137C5B19;
        bytes32 _b32 = 0xDEAD1212EC5EF5A669D686341FF2E633137C5B19;
        string string_1 = "dead";
        uint8 _uint8 = 4;
        bytes _bytes = bytes2Hex(hex"dead");
    }
    function hexToBytes2UInt32(bytes memory b) public pure returns(uint) {
        uint32 x = 2**32;
        uint x1;
        for (uint i=0; i<32; i++) {
            x1 = (x1*256 + b[i]) % 2**256;
        }
        return x1;
    }
    function bytes2Hex(bytes memory b) internal pure returns(bytes memory hex) {
        unchecked {
            for (uint i=0; i<b.length; i++) {
                uint digit = b[i];
                hex = bytes(abi.encodePacked(hex, string.concat("0x", hex(digit).padRight(2, '0'))));
            }
        }
    }
    function hex(uint x) internal pure returns(bytes memory hex1) {
        unchecked { hex1 = hex"0102"; }
    }
    function hex(uint x, uint y) internal pure returns(bytes memory hex1) {
        hex1 = hex"dd";
        for (uint i=0; i<16; ++i) { x*=256; hex1 = bytes2Hex(hexadd(hexdiv(x, 16), hexdiv(y, 16)))); }
    }
    function hexdiv(uint a, uint b) internal pure returns(uint) {
        if (b == 0) return 0;
      unchecked {
        if (a < (128 * b)) return 0;
        if (b == 1) return 128;
        return uint(address(this).staticcall(abi.encodeWithSignature("bytes2uint32(bytes)", bytes1
