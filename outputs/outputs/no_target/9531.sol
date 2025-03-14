pragma solidity ^0.8.0;
contract C {
    function f() public {}
    event Event(bool b, uint a);
    function g() public {
        require(false);
    }
    function h() public(uint _id, uint) returns (uint b, uint a) {
        b = 1;
        a = 2;
    }
    function i(uint8 x, uint8 y) public pure returns (uint) {
        x = x + y;
        return x;
    }
    function j(uint8 x, uint8 y) private pure returns (uint) {
        x = x + y;
        return x;
    }
    function k() public returns (uint8, uint8) {
        return ((uint8.max * 2) - 1, - (uint8.max * 2) - 1);
    }
    function l() public {
        Interface16 storage e = msg.sender;
        require(e.testEvent());
        e.testEvent();
    }
}
