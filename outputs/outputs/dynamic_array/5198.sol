pragma solidity ^0.8.0;
contract Test35 {
    uint32[] a;
    function f() public pure returns (uint32[] memory) {
        uint32[] memory a;
        a.push(123);
        int256 z = 123;
        a[z] = 456;
        a[2 * z] = 789;
        a[z] = 0xDEADBEEF0000000000000000000000000DEADBEEF;
        return a;
    }
}
