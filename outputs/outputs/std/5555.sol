pragma solidity ^0.8.0;
contract A {
    function f() public view {
        x = x;
        uint[21] memory X;
    }
    uint x=-1;
    function f() public {
        x = x;
        uint[21] memory X;
    }
}
interface AInterface {
    function f() external view;
}
contract B is A {
    AInterface a;
    uint[21] memory M;
    constructor(address ad) {
        a = AInterface(ad);
        a.f();
        M = M;
    }
    function g() public view {
        x = x;
        uint[21] memory Y;
    }
    uint x=-2;
}
