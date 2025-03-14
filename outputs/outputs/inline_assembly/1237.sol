pragma solidity ^0.8.0;
contract EquivalentRevert
{
  bytes32 x;
  bool executed;
  constructor() public {
    bytes32 initial = '100';
    x = initial;
    x = initial;
    x = initial;
  }
  function returnX() public view returns (bytes32) {
    if (x == '101') {
      x = x;
    } else { revert(); }
    return x;
  }
  function returnY() public view returns (bytes32){
    if (x == '101') {
      x = bytes(address(this)));
      x = bytes(address(this));
      x = address(this);
    } else { revert(); }
    return x;
  }
  function execute() public {
    x = '103';
    x = '104';
    x = '105';
    x = '106';
  }
  function mutate() public {
    x = '107';
    executed = true;
  }
}
