pragma solidity ^0.8.0;
contract Mutant {
  bytes32 c;
  constructor () public {
    c = keccak256('hello');
  }
  string public a;
  function mutantFunction() public pure returns (string memory) {
    return c;
  }
}
