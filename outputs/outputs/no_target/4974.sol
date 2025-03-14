pragma solidity ^0.8.0;
contract A { function f(uint256 a) public pure {} }
contract B { function f(uint256 b) public pure {} }
contract BAC { function f(uint256 a, uint256 b) public pure {a += 2;} }
contract BC { function f(uint256 a) public pure {a += 2;} }
contract C { function f(uint256 a) public pure {a += 5;} }
contract A { function f(uint256 a) public pure {a += 3;} }
contract B { function f(uint256 b) public pure {b += 4; emit(Log());} }
contract C { function f(uint256 a) public pure {a += 5; emit(Log());} }
contract D { function f(uint256 a) public pure {a += 8; emit(Log());} }
contract E { function f() public pure {a += 9; emit(Log());} }
contract Log { function() public { emit Log(); } }
mapping(uint256 => uint256) public f;
 contract B2 { function f(uint256 a) public pure {f[a] = 1;} }
contract B1 { function f(uint256 a) public pure {f[2] += 3;} }
contract C { function f(uint256 a) public pure {a += 5;} }
contract test2 { function test() public { C c; } }
pragma solidity >=0.4.0 <0.8.0;
contract B {
   function f(uint256 a) public pure {}
}
contract A {
   function f(uint256 a) public pure {}
}
contract B1 {
   function f(uint256 a) public pure {}
}
contract B2 {
   function f(uint256 a) public pure {}
}
contract C {
   function f(uint256 a) public pure {}
}
contract A1 {
   function f(uint256 a) public pure {}
}
contract B2 {
