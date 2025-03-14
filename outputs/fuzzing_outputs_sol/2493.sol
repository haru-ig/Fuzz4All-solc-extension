pragma solidity ^0.8.0;
contract Throw {
  function throw(uint x) public { throw x; }
}
contract Throws {
  function callThrow() external payable {
    throw Throw.throw(313);
  }
}
contract Caller {
}
