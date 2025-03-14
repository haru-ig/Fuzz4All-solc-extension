pragma solidity ^0.8.0;
contract EtherReader {
  bytes32 constant private TEST_KEY = "theAnswer";
  uint immutable private testUint;
  constructor(uint _testUint) {
    testUint = _testUint;

  }
  function get(bytes32 key) public view returns (uint) {
    return testUint;
  }
  function getAndThrow(bytes32 key) public pure returns (uint) {
    require(key == TEST_KEY, "TEST_KEY must be TEST_KEY");
    return testUint;
  }
}
