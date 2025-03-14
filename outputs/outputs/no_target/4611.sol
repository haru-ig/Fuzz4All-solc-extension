pragma solidity ^0.8.0;
contract B{
    function f() public{
        B b = new B();
        b.f();
        b.f();
        b.f();
    }
}
