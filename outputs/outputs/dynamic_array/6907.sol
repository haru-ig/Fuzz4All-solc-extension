pragma solidity ^0.8.0;
contract Test3 {
    struct S {
        uint8[] public arr;
    }

    constructor() {
        S memory s1;
        S memory s2;
        s1.arr = new uint8[](0);
        s1.arr.push(0);
        s2.arr = new uint8[](0);
    }
}
