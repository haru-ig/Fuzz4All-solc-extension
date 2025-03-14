pragma solidity ^0.8.0;
contract BetterProgramV3 {
  bytes32 constant X = '100';
  bytes32 x;
  bool executed;
  uint256 value;
  constructor() public {
    value = X;
    x = X;
  }
  modifier onlyIfExecuted {
    executed = true;
    _;
  }
  bool public isExecuted;
  function execute() public onlyIfExecuted,returns(uint256)
  {
    executed = false;
    return value;
	}

	function mutate(uint256 value_) public returns(uint256) {
    value = value_;
    return value;
  }
}
