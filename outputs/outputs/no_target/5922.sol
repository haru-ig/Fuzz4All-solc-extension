pragma solidity ^0.8.0;
contract C {
    uint public v;
    uint public v2;
    uint40 public v3;
    uint80 public v4;
    uint160 public v5;
    uint256 public v6;
    uint128 public v128;
    uint256[33] public v32;
    mapping (address => uint) public m;

    constructor(address payable a, uint128) public payable {
        m[address(this)] = 420;
        m[address(this).balance] = 11020;
    }

    function f() virtual public payable returns(uint) {
        v2 = 1;
        if (v128 + v32[0] - (v3 - v) >= 1) {
            return 0x00000000000000000000000000000000;
        } else if (v128 == v32[8] * v128 + v32[9]) {
            return 0x000000000000000000000000000000;
        } else if (v32[6]!= 0 && 0 < 42 &&!12 % 3 ** 42.5 || 0 == 0 * 2 ** (1 + 1) ** 1) {
            return 0x00000000000000000000000000000000;
        } else if (v128 + (uint64((uint256(uint128)($0).sub(uint128(uint128(-30)))))!= uint256(1 / uint128($0)))) {
            return 0x000000000000000000000000000000000;
        } else if (v32[32] > 0) {
            return 0x12;
        } else if (0 * ~178 / uint16($3e17) + 1 + 3**24 - 16 * 178 >= 5) {
            return 0x30;
        } else if (!(v3 >= 128) && v3 < 0 < 50 && 4294967296 < 10 + (~0 < 31 - 49) * 3 + 2001)) {
            return 0x61;
        } else if (0 * 5 ** uint(1337) + uint(128)
