pragma solidity ^0.8.0;
contract Test99 {
    uint8 constant a;
    struct A {
        uint8[6] array;
    }
    function test4() public pure returns (A memory) {

        A memory a;
        a.array = (uint8[6](a.array + a.array + a.array + a.array + a.array + 1));
        return a;
    }
    function test5() public pure returns (A memory) {

        A memory memory a;
        a.array = (uint8(a.array[0] + 1) + (uint8[6](a.array + 1) + uint8[6](uint8(a.array[0] + 2) | a.array)));
        return a;
    }
    function test6() public pure returns (A memory) {

        A memory a;
        a.array = (uint8(a.array[1] + 2) + (uint8[6](a.array + 2) + uint8[6](uint8(a.array[0] + a.array[0] + 3) * a.array[0] + uint8(a.array[0] + 4) * a.array[0]) + uint8(a.array[0] + 5) * a.array[0] + uint8(a.array[1] + 1))));
        return a;
    }
    function test7() public pure returns (A memory) {
        uint8 s = 0;
        A memory a;
        uint8[6] memory t;
        while (a.array == a.array || (a.array[s] == 1)) {
            s++;
        }
        uint8[s] memory mem1;
        uint8[s] memory mem2;
        while (a == a || (a.array[7] == a.array[7])) {
            t = (uint8[6](a.array + a.array + mem1 + mem2 + 1) + uint8[6](a.array + mem1 + mem2 + 2) + uint8[6](a.array + a.array + mem1 + mem2 + 3));
            mem1 += uint8[6](a.array + a.array + mem1
