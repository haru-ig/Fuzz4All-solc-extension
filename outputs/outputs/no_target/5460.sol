pragma solidity ^0.8.0;
contract I {
    function f() public pure {
        uint[128] memory a;
        a[128 - 1] = 77;
        a[127] = 88;
    }
}
