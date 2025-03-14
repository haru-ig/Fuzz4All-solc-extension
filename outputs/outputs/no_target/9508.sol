pragma solidity ^0.8.0;
contract Test {
    Interface59 a;
    event MyEvent(uint c);
    constructor() public {
        a= interface(0xa);
        a.g();
    }
    function g() public  view returns (uint) {
        return 1;
    }
    function test() public returns (uint) {
        emit MyEvent(a.g());
        return a.g();
    }
    function h() public {
        a.g();
        emit MyEvent(a.g());
        emit MyEvent(a.g());
    }
}
