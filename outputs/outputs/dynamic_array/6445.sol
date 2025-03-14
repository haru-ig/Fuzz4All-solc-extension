pragma solidity ^0.8.0;
contract c {
    uint16[1234] a;

    function f() public pure returns (uint16[2]) {
        return [a[1], a[3]];
    }
    function g2() public pure returns (uint16[1234]) {
        return a;
    }
}
