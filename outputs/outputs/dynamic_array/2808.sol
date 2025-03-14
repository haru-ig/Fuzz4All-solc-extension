pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations11 {
    uint public i;
    uint[100] private arr;
    uint[] public y;
    bool public b;
    uint public x;
    function fct (uint x_) public {
        i = 0;
        x = x_;
        x = x + x + x;
        arr[0] = x;
        y = x.toUint();
        arr[1] = uint8(x);
        arr[2] = uint16(x);
        arr[3] = uint32(x);
        arr[4] = uint64(x);
        arr[5] = x / 100;
        arr[6] = uint80(x);
        b = x % 225 < 22500;
        arr[7] = uint(x);
        arr[8] = uint(x - x);
        arr[9] = uint(x.toUint());
        arr[10] = x >> 32;
        arr[11] = x << 3;
        arr[12] = x.asBytes();
        arr[13] = arr[12] + x - x;
        for (uint256 i = 0; i < 100; ++i) {
            arr[i + 1] = i;
        }

        for (uint256 i = 0; i < 100; ++i) {
            arr[i + 1] = arr[i];
        }
        for (uint256 i = 0; i < 10; ++i) {
            x /= 50;
            for(uint i = 0; i < 10; ++i) {
                arr[i] = 50 * i + 1;
            }
        }
        uint256 j = 0;
        i = 0;
        b = false;
        x = 0;
        x = uint(1000);
        x = uint.max + 1;
        x = uint8.max;
        x = uint8.min;
        x = uint16.max;
        x = uint16.min;
        x = uint32.max;
        x = uint32.min;
        x = uint64.max;
        x = uint64(uint128((100000
