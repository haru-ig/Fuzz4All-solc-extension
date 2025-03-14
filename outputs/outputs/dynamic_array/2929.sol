pragma solidity ^0.8.0;
interface I {
    function f() public returns (uint x, uint y);
    function g() public returns (uint, uint);
    function h() public returns (uint, uint[]);
    function i() public returns (uint[]);
    function j() public returns (uint[][1]);
}
