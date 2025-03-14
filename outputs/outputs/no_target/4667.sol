pragma solidity ^0.8.0;
contract C {
constructor()public {}
function f(uint64 i) public { return uint64(i.add(1)); }
function f() private view returns (uint64) { return uint64(uint160(address(this)).add(i)); }
}
