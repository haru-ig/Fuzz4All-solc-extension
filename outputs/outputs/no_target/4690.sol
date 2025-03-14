pragma solidity ^0.8.0;
contract D {
address constant e = address(new D(e));
}
contract C {
contract A {
using D for D.address;
address public a;
event e(uint);
function f() public pure returns (uint) {
return m();
}
function m() public pure returns (uint) { return 1 << 32; }
function n() public {
a.f.e(e);
}
}
}
contract E {
contract A {
using D for D.address;
address public a;
constructor(address a_) public {
a = a_;
}
address public b;
function f() public returns (uint) {
return b;
}
event e(uint);
}
contract M {
contract A {
address public a;
event e(uint);
function f() public pure returns (uint) {
return a;
}
function d() public {
 bytes memory b = '0x12d3'.toHex();
 E c = new E(0x42);
 require(c.a == b);
 }
}
}
}
contract F {
contract A {
using D for D.address;
address public a;
constructor(address a_) public {
a = a_;
}
address public b;
function m() public pure returns (uint) {return a; }
function f() public returns (uint) {
require(m() >= m());
return b + a;
}
event e(uint);
}
contract M {
contract A {
address public a;
event e(uint);
function f() public pure returns (uint) {
return a.f.f(a);
}
function d() public {
 bytes memory b = '0x12d3'.toHex();
 F c = new F(0x42);
 require(c.a == b);
 }
}
}
}
contract G {
contract A {
using D for D.address;
address public a;
constructor(address a_) public {
a = a_;
}
address public b;
function m() public pure returns (uint) {return b; }
function a() public returns (uint) {return a / a; }
function f() public returns (uint) {
require(m()!= a() && m() >= a());
return b + a;
}
event e(uint);
}
contract M {
contract A {
address public a;
event e(uint);
function f() public pure returns (uint) {
return m.a(m) / m;
}
function d() public {
 bytes memory b = '0x12d3'.toHex();
 G c = new G(0x42);
 require(c.a == b);
 }
}
}
