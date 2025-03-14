pragma solidity ^0.8.0;
contract test271 {
    uint[100] a;
    constructor() public {
        a.length = 1;
        a[0] = 1;
        }
    function test() public returns (uint) {
        return 0;
    }
}
