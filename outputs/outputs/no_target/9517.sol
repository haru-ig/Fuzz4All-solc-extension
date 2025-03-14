pragma solidity ^0.8.0;
contract Contract8 {
    uint a;
    constructor(uint)public {
        a = 3;
    }

    function f() public view returns (address) {
        return address(uint(1) ^ uint(2));
    }

    function g() public view returns (uint) {
        uint _ = 1;
        uint _ = 2;
        uint _ = 3;
        uint _ = 4;
        uint _ = 5;
        uint _ = 6;
        uint _ = 7;
        uint _ = 8;
        uint _ = 0x1;
        uint _ = 0x20000;
        return 0x10000000000000000;
    }

    function h() public pure returns (address) {
        bool result = true;
        while (result) {

        }
        while (!result) {

        }
    }
}
