pragma solidity ^0.8.0;
contract EquivalentProgram
{
  bytes32 x;

  constructor() public {
    x = '101';
  }
  function returnX() public view returns (bytes32) {
    return x;
  }
  function returnY() public view returns (bytes32){
    return '102';
  }
  function execute() public {
    x = '103';
    x = '104';
    x = '105';
  }
  function mutate() public {
    x = '106';
  }
}

contract EquivalentProgram2
{
  bytes32 x;

  constructor() public {
    x = '101';
    x += '102';
  }
  function returnX() public view returns (bytes32) {
    return x;
  }
  function returnY() public view returns (bytes32){
    return '102';
  }
  function execute() public {
    x = '103';
    x = '104';
    x = '105';
    x = '101';
  }
  function mutate() public {
    x += '106';
  }
  function createArray() public {
    bytes32[] memory b = new bytes32[](3);
  }
  function readArray() view returns (bytes32[]) {
    bytes32[] memory a = new bytes32[](3);
    bytes32 memory emptyArr = '102';
    a = new bytes32[](3);
  }
}
