pragma solidity ^0.8.0;
contract C1 {
    uint32 x;
    function f() public static {
        uint[] memory a;
        a[0] = 1;
        a[1] = a[0] + 4;
        a[2] = 2;
        a[3] = 5;
        a[4] = 6;
    }
}
