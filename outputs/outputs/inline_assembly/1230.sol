pragma solidity ^0.8.0;
contract ComplexProgram
{
  bytes32 x;
  constructor() public {
    x = '107';
  }
  function returnX() public view returns (bytes32) {
    return x;
  }
  function returnY() public view returns (bytes32){
    (bytes32 memory y) = new bytes32(204);
    x = y;
    return y;
  }
  function execute() public {
    x = '108';
    x = '109';
    x = '110';
  }
  function mutate() public {
    x = y;
  }
}
