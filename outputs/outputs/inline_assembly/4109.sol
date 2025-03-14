pragma solidity ^0.8.0;
contract Modifiers {
  function test () internal onlyMinte(msg.sender) {
    uint x = 1e12;
  }

  function test () internal onlyMinte(msg.sender) {}
  modifier onlyMinte(address _){
    assert(msg.sender == _);
    _;
  }
}
