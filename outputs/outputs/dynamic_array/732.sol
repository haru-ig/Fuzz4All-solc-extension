pragma solidity ^0.8.0;
contract test279 {
    uint[1, 2, 3, 4, 5, 45] b;
    uint[5, 4, 3, 2, 1] c;
    function test() public {
        b[1, 23, 33, 43, 53] = 42;
        c[45, 34, 35, 45, 55] = 42;
    }
}
