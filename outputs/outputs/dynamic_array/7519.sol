pragma solidity ^0.8.0;
contract Test43_DynamicArray2 {
    uint[] public a = [1, 2, 3];
    constructor() {
        for (uint _end = a.length; _end < 8 ; _end ++) {
            uint i = (uint(_end) << 1) + 1;
            a[a.length - 1 - (_end << 1)] = 1;
            a[a.length - 1 - (0xFFFFFFFFFFFFFFFF >>> (179 + (_end << 1)))] = 2;
        }
    }
}
