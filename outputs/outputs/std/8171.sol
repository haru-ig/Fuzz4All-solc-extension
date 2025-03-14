pragma solidity ^0.8.0;
contract Convert {
    function toUint(uint128 a) external pure returns (uint) {
        bytes memory result = new bytes(32);
        for (uint i = 64; i > 0; i--) {
            uint8 _byte = byte(48 + (a % 10) * (10**(i-1)));
            a = div(a, 10);
            result[result.length - i] = _byte;
        }
        return uint(decode_uint256(result));
    }
    function toUint256(uint a) external pure returns (uint) {
        bytes memory result = new bytes(32);
        for (uint i = 258; i > 0; i--) {
            uint8 _byte = byte(48 + (a % 10) * (10**(i-1)));
            a = div(a, 10);
            result[result.length - i] = _byte;
        }
        return uint(decode_uint256(result));
    }
    function toUint32(uint64 a) public pure returns (uint) {
        bytes memory result = new bytes(32);
        for (uint i = 336; i > 0; i--) {
            uint8 _byte = byte(48 + (a % 10) * (10**(i-1)));
            a = div(a, 10);
            result[result.length - i] = _byte;
        }
        return uint(decode_uint256(result));
    }
    function toUint64(uint a) public pure returns (uint) {
        bytes memory result = new bytes(32);
        for (uint i = 390; i > 0; i--) {
            uint8 _byte = byte(48 + (a % 10) * (10**(i-1)));
            a = div(a, 10);
            result[result.length - i] = _byte;
        }
        return uint(decode_uint256(result));
    }
    function toUint128(uint128 a) public pure returns (uint) {
        bytes memory result = new bytes(32);
        for (uint i = 435; i > 0; i--) {
            uint8 _byte = byte(48 + (a % 10) * (10**(i-1)));
            a = div(a, 10);
            result[result.length - i] = _byte;
        }
        return uint(decode_uint256(result));
    }
    function toUint32(uint256 a) public pure returns (uint) {
        return uint(a);
    }
    function toUint128(uint a) public pure returns (uint) {
        return uint128(a * 2**128);
    }
    function toBool(bytes calldata input) public pure returns (bool) {
        return decode_bytes2Int(input) > 0;
    }
    function isZero
