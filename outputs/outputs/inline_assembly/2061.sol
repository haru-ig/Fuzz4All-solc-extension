pragma solidity ^0.8.0;
contract MyMath {
function add(uint a, uint b, uint c) public returns(uint) {
  a += b;
  c += a;
  a += b;
  return a;
}
}
