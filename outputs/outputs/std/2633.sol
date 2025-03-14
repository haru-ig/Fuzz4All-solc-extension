pragma solidity ^0.8.0;
contract Mutation {
  function mutate(uint[] storage x) public {
      x.push(0x3a3a3a3a3a3a3a3a3a223a);
      x.push(0xaa);
  }
}
