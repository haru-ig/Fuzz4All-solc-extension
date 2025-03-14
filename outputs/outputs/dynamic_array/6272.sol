pragma solidity ^0.8.0;


import "lib/l.sol";
contract c {
	mapping(address => bool) public bools;
	mapping(address => bool[]) public boolss;
	mapping(address => bool) public bools_;
	mapping(address => (address, uint[])) public addrs;
	mapping(uint => bool) public boolss_;
	mapping(uint => bool[]) public boolss1;
	function a() public returns (address) {
	    return msg.sender;
	}
	function b() public returns (uint[] memory) {
	    return new uint[](0);
	}
	function c() public returns (bool) {
	    return true;
	}
	function d() public returns (uint) {
	    return 0xa;
	}
	function e() public returns (address, uint) {
	    return (msg.sender, 1);
	}
	function f() public returns (int, uint) {
	    return (0x0, 1);
	}
	function g() public returns (address[], uint[]) {
	    return (new address[](0), new uint[](0));
	}
	function h() public returns (bytes32, s.a memory) {
	    return (bytes32(0), s.a({ a: 1, b: 2 }));
	}
	function i() public returns (s.a[] memory) {
	    return new s.a[](0);
	}
	function j() public returns (bool[]) {
	    return new bool[](0);
	}
	function k() public returns (bool) {
	    return true;
	}
	function l() public returns (uint[]) {
	    return new uint[](0);
	}
	function m() public returns (s[], s[][] memory) {
	    return (new s[](0), new s[0][]);
	}
	function n() public returns (address) {
	    return msg.sender;
	}
	function o() public returns (int8, int256) {
	    return (-0xa, 0x6000000000000000000000000000000000000000000000);
	}
	function p() public returns (address) {
	    return msg.sender;
	}
	function q()
