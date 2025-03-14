pragma solidity ^0.8.0;
contract BetterProgram {
bytes32 constant X = '101';
bytes32 x;
bool executed;
constructor() public {
   x = X;
}
modifier onlyIfExecuted {
    executed = true;
    _;
  }
  bool public isExecuted;
  address payable xAddress;
  function execute() public onlyIfExecuted
  {
    xAddress = payable(_msgSender());
    executed = true;
  }
  function mutate() public
  {
    xAddress = payable(address(new BetterProgram()));
  }
}
