pragma solidity ^0.8.0;
contract semanticallyEquiv{
    uint a;
    function f() returns (uint) {
        a = 42;
        return a * 2;
    }
    function g() internal returns (uint) {
        a *= 2;
        return a / 2;
    }
    function h() public returns (uint) {
        a += 4;
        return a / 2;
    }
}
