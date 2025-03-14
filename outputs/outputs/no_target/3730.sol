pragma solidity ^0.8.0;
contract X {
    function g128() public pure returns (uint256) {
        return uint256(-1) >> 65535;
    }
    function g256() view public pure returns (uint256) {
        return uint256(2 ** 256 - 1) >> 256;
    }
    function f64() internal pure returns (uint64) {
        return 10 ** 17;
    }
    function f128() internal pure returns (uint256) {
        return 10 ** 128;
    }
    function f256() internal pure returns (uint128) {
        return uint128(-1) >> 31;
    }
    function f256i() public pure returns (uint128) {
        uint256 max = uint256(-1) >> 31;
        return (max << 1) + 1;
    }
    function g128I() public pure returns (uint128) {
        uint256 max = uint256(2 ** 128 - 1) >> 127;
        return uint128(max << 1) + 1;
    }
    function g256I() public pure returns (uint128) {
        uint256 max = uint256(2 ** 256 - 1) >> 256;
        return uint128(max) + 1;
    }
    function g64() public pure returns (uint64) {
        return uint64(2 ** 53) - 1;
    }
    function g53() view public pure returns (uint53) {
        return uint53(2 ** 35) >> 33;
    }
    function g53I() public pure returns (uint53) {
        uint53 max = uint53(2 ** 35 - 1);
        return uint53(max << 1) + 1;
    }
    function g529() view public pure returns (uint529) {
        return uint529(2 ** 47) >> 32;
    }
    function g529I() public pure returns (uint529) {
        uint529 max = uint529(2 ** 47 - 1);
        return uint529(max << 1) + 1;
    }
    function g536() view public pure returns (uint536) {
        return uint536(2 ** 58) >> 32;
    }
    function g536I() public pure returns (uint536) {
        uint
