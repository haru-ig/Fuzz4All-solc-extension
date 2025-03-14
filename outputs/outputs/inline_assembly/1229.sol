pragma solidity ^0.8.0;
contract SimpleProgram
{
  bytes32 x;
  bool executed;
  constructor() public {
    x = '100';
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
