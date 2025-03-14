pragma solidity ^0.8.0;
contract C {
constructor()public {}
function f() public view returns (uint) {}
function g() public view returns (bool) {}
}
contract C is C {
constructor()public {}
function f() public view returns (uint) {}
function g() public view returns (bool) {}
}
contract C is C is C {
constructor()public {}
function f() public view returns (uint) {}
function g() public view returns (bool) {}
}
