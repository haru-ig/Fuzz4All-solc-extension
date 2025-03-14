pragma solidity ^0.8.0;
contract A { function f() public pure { require (address(this).balance > 0xffffffff); } }
function main() {
  B() f();
  B() A().f();
}
