pragma solidity ^0.8.0;
contract test61 {
    uint[] a;
    uint[] b;
    constructor() public {
        a = new uint[](2);
        a[1] = 40;
        b = new uint[](2);
        b[0] = 77;
        b[1] = 99;
    }
    function test() public returns (bool) {
        a[1] = 88;
        b[0] = 99;
        address addr_5 = msg.sender;
        uint a_2 = a[1];
        uint b_3 = b[1];
    }
}
