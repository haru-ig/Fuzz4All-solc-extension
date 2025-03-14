pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract EquivalentProgram {
  bytes32 constant X = '200';
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
  function execute() public onlyIfExecuted
    bytes32 x{
      x = X;
    }
  }
}
contract UseInlineAssembly {
  bytes32 constant SIMPLE_VARIABLE = '000';
  uint32 simpleVariable;
  constructor() public {
    simpleVariable = SIMPLE_VARIABLE;
  }
  function setSimpleVariableToX() public {
    simpleVariable = SIMPLE_VARIABLE;
  }
}
