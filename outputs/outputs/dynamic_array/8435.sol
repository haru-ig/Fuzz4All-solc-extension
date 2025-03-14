pragma solidity ^0.8.0;
library mutantSolidity19082378355Library {
    struct SomeContainer {
        uint x;
        uint y;
        uint[3] arr;
    }
    function change() pure public returns (SomeContainer memory a) {
        a = SomeContainer({x: 0, y: 1});
        a.arr[0] = 1;
        a.arr[1] = 2;
        a.arr[2] = 3;
    }
}
