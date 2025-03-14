pragma solidity ^0.8.0;
contract BetterProgram {
  bytes32 constant X = '100';
  bytes32 x;
  bool executed;
  bool isExecuted;
  constructor() public {
   x = X;
  }
  modifier onlyIfExecuted {
    isExecuted = true;
    executed = true;
    _;
  }
  modifier onlyIfExecutedCheckIfExecuted {
    executed = true;
    _;
  }
  bool public isExecuted;
  function execute() public onlyIfExecutedCheckIfExecuted
  {
    executed = true;
  }
  function mutate() public
  {
    x = '0';
  }
}

pragma solidity ^0.8.0;
contract BetterProgram {
  bytes32 constant X = '100';
  bytes32 x;
  bool executed;
  bool public changed;
  constructor() public {
   x = X;
  }
  modifier onlyIfExecuted {
    executed = true;
    changed = true;
    _;
  }
  bool public isExecuted;
  function execute() public onlyIfExecuted
  {
    executed = true;
    changed = false;
  }
  function mutate() public
  {
    x = '0';
  }
  function publicSetter() public {
    changed = true;
  }
}
