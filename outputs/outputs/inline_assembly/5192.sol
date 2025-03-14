pragma solidity ^0.8.0;
contract C {
  address payable m;
  bytes32 c;
  constructor(address payable payee) public {
    m = payee;
    c = abi.encode(
        keccak256(bytes("MutatedCounter in contract C")),
        abi.encodePacked(2,3232, keccak256(abi.encodePacked(2,12345678900,2)))))
  }
  function checkCounter(uint id) public view returns (uint) {
    return c;
  }
  function mutatedCounter(uint id, uint x) public returns (uint) {
     c = abi.encodePacked(k);
     uint c;
     uint c1 = 3;
     uint c2 = 1;
     uint x1 = (51793289499) + (uint(m));
     uint x2 =
