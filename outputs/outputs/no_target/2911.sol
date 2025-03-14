pragma solidity ^0.8.0;
contract first{
    uint a;
    uint b;
    constructor() public {
        a += 2;
        b -= 16;
    }
    function g() public view returns (uint) {
        emit hello();
        return a;
    }
    function h() public pure returns (uint) {
        return e;
    }
}
contract second{
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        b += 6;
        a += 8;
        c = b + 8;
        d += 2;
        e -= 1;
    }
    function f() public view returns (uint) {
        return g();
    }
    function g() public view returns (uint) {
        emit hello();
        return a;
    }
}
