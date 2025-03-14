pragma solidity ^0.8.0;
contract Test84New {
    uint[3][6] memory memory_arr;
    function m(uint[3][6] memory memory_arr) external pure {
        (uint[2][4] memory memory_subset, uint[2][4] memory memory_subset2) = memory_subset;
        memory_subset = memory_subset2;
        memory_arr[0][1] = memory_subset;
        return;
    }
    function n(uint[3][6] memory memory_arr) external pure {
        (uint[4][4] memory memory_subset, uint[4][4] memory memory_subset2) = memory_subset;
        (uint[2][4] memory memory_subset3, uint[2][4] memory memory_subset4) = memory_subset2;
        memory_subset3 = memory_subset;
        memory_subset2 = memory_subset4;
        uint[2][4] memory memory_subset5;
        (uint[4][4] memory memory_subset6, uint[4][4] memory memory_subset7) = memory_subset3;
        memory_subset5 = memory_subset6;
        memory_subset6 = memory_subset7;
        memory_subset = memory_subset5;
        memory_subset2 = memory_subset4;
        memory_subset3 = memory_subset;
        memory_subset6 = memory_subset;
        memory_subset7 = memory_subset4;
        memory_subset = memory_subset3;
        memory_subset2 = memory_subset6;
        memory_subset5 = memory_subset7;
        memory_subset = memory_subset;
        memory_subset2 = memory_subset4;
        memory_subset3 = memory_subset;
        memory_subset6 = memory_subset;
        memory_subset7 = memory_subset4;
        memory_subset = memory_subset5;
        memory_subset2 = memory_subset4;
        memory_subset3 = memory_subset;
        memory_subset6 = memory_subset;
        memory_subset7 = memory_subset4;
        memory_subset = memory_subset3;
        memory_subset2 = memory_subset6;
        memory_subset5 = memory_subset7;
        memory_subset = memory_subset5;
        memory_subset2 = memory_subset4;
        memory_subset3 = memory_subset5;
        memory_subset = memory_subset;
        uint[2][4] memory memory_subset9;
        (uint
