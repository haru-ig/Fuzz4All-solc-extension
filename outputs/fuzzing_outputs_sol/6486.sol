pragma solidity ^0.8.0;
contract Caller {
    receive () external payable {}

    function f() public pure {}

    function g() public returns (uint) {
        Caller caller = Caller(msg.sender);
        return caller.f() + 3 + 4;
    }

    function h() public {
        Caller caller = Caller(msg.sender);
        caller.g();
        caller.f();
    }
}
