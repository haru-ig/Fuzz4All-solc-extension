pragma solidity ^0.8.0;
 contract Vulneratr { uint u; address b; function f() public { u = 0x8000000000000000; b = address(this); } }
address attacker = 0x6e38b3fd2b90c104852d9d143db65f9aa8d9d5f5; address contractAddr = 0x6e38b3fd2b90c104852d9d143db65f9aa8d9d5f5; attacker.transfer(contractAddr, 100);
contract Simple { function m() public { uint(bytes32(m)); } }
interface Interface { function f(address) public; function m() public pure; function f(uint) public;} contract Attack { function f() public payable { f(address(this)); } } contract Battler { interface I { function attack(address) external; } I i; contract A { function attack(address) public { i.attack(this); } } Attack a; contract B { A a; function f() public payable { a.a.attack(msg.sender); } } contract C { constructor(uint, address) public { uint(bytes32(a)); } } contract D { Constructor() public { uint(bytes32(a)); } } contract X { function test() public payable { uint(bytes32(a)); } } X y;
