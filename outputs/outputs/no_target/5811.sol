pragma solidity ^0.8.0;
contract C4 {
    constructor() public {
    }
}
contract C5 {
address payable x = address(1);
function f() public {
        _;
        x.send(1 ether);
    }
}
contract C6 {
    function f() public {
        require(true);
        uint x = 4294967295;
        x < type(int128).max;

    }
    function g() public {
        uint x = getAmount();
        x > type(int128).max;

    }
    function getAmount() public pure returns (uint) {
        require(false);
    }
}
contract C7 {
    function a() private returns (uint) {
        require(false);
        uint x = 4294967295;
        x < type(int128).max;
    }
    function b() public returns (uint) {
        uint x = getAmount();
        x > type(int128).max;
    }
    function c() public returns (uint) {
        uint x = a() / uint(2);
        x;
    }
    function d() public returns (uint) {
        uint x = a() % uint(2);
        x;
    }
    function e() public returns (uint) {
        uint x = a() && uint(1);
        x;
    }
    function f() public returns (uint) {
        uint x = a() || uint(1);
        x;
    }
    function g() public returns (uint) {
        uint x = a() << 2;
        x;
    }
    function h() public returns (uint) {
        uint x = a() >> 2;
        x;
    }
    function i() public returns (uint) {
        uint x = a() ^ uint(1);
        x;
    }
    function j() public returns (uint) {
        uint x = a() + uint(1);
        x;
    }
    function k() public returns (uint) {
        uint x = a() - uint(1);
        x;
    }
    function l() public returns (uint) {
        uint x = 8 - a();
        x;
    }
    function m() public returns (uint) {
        uint x = 256 - a();
        x;
    }
    function n() public returns (uint) {
        uint x = a() & uint(1);
        x;
    }
    function o() public returns (uint) {
        uint x = a() | uint(1);
        x;
    }
    function p() public returns (uint x) {
        x = a();
        x.toString();
    }
    function q() public returns (uint x) {
        address x = msg.sender;
        x.toString();
    }
    function r() public returns (uint) {
        address x = msg.sender;
