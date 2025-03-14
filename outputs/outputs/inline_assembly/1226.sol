pragma solidity ^0.8.0;
contract Mutate
{
  bytes32 x;
  constructor() public {
    x = '100';
    emit Muted();
  }
  function testMutated() public view returns(bytes32) {
    return x;
  }
  function x() public pure returns(bytes32) {
    return x;
  }
  modifier onlyIfExecuted {
    require(executed);
    _;
  }
  function resetIfExecuted() public onlyIfExecuted {
    x = '100';
    executed = false;
  }
  event Muted();
}
