pragma solidity ^0.8.0;
contract C11 {
    struct S;
    function f() public pure returns (uint) {
        return (uint(0xBEEF));
    }
}
contract C1 {
    function g() public returns (uint, uint);
}
contract Caller {
    function callc1() public pure requires(msg.value == 0.1 ether) returns (uint, uint) {
        C1 c = new C1();
        uint data = bytes(c.f()).length;
        return (data, (data / 32) + 1);
    }

    function callc20() public pure requires(msg.value == 0.1 ether) returns (uint) {
        C20 c = new C20();
        return (uint(c.f()));
    }
}
