pragma solidity ^0.8.0;
contract test275 {
    uint [10000] a;
    function test() public returns (uint) {
        a[10000-1000 ] = 1;
        return a[10000-1];
    }
}
