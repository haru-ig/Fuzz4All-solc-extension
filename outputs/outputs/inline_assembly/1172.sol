pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract EquivalentProgram {
  bytes32 constant X = '1001910';
  bytes32 x;
  bool executed;
  modifier onlyIfExecuted {
    executed = true;
    _;
  }
  constructor() public {
    x = X;
  }
  bool public isExecuted;
  function execute() public onlyIfExecuted {
    executed = false;
  }
}
contract EquivalentCompiler {
  bytes32 constant X = '1001910';
  bytes32 x;
  function getX() public view returns (bytes32){
    return x;
  }
  function setX() public {
    x = X;
  }
}
contract EquivalentLibrary {
  function getX() public pure returns (bytes32){
    return X;
  }
  function setX() public pure {
    X;
  }
}
contract EquivalentSmartContract {
  mapping ( address => bool) public isCalled;
  address payable owner;
