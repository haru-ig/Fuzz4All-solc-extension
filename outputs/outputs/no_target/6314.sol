pragma solidity ^0.8.0;
contract C {
    function a() public pure returns (address) { uint x = 1; uint y = uint(1) + x; }
    function b() public pure returns (address) { uint x = 1; uint y = uint(1) - 1 + x; }
    function c() public pure returns (address) { uint x = 1; uint y = uint(1) / 2 + x; }
    function d() public pure returns (address) { uint x = 1; uint y = uint(1) * -1 + x; }
    function e() public pure returns (address) { uint x = 1; uint y = uint(x) - uint(x); }
    function f() public pure returns (address) { uint x = 1; uint y = uint(1) ** uint(1) + uint(1); }
    function g() public pure returns (address) { uint x = 1; uint y = uint(1) ** uint(2) - uint(1); }
    function h() public pure returns (address) { uint x = 1; uint y = uint(x) ** uint(x - 1) * uint(1); }
    function i() public pure returns (address) { uint x = 1; uint y = uint(1) * uint(x) * uint(1) + uint(1); }
    function j() public pure returns (address) { uint x = 1; uint y = uint(x) * uint(1) / uint(1) + uint(1); }
    function k() public pure returns (address) { uint x = 1;
