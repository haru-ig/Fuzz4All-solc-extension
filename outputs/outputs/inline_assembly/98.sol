pragma solidity ^0.8.0;
contract A {
  uint8 public _number;
  constructor() {

    inlineAssembly();
    externalAssembly();
  }

  function inlineAssembly() public {
    _number = inlineAssembly();
  }
  function externalAssembly() public {
    _number = externalAssembly();
  }
  function getNumberFromInternalVariable() public view returns (uint8) {
    return _number;
  }
  function getNumberFromExternalVariable() public view returns (uint8) {

    return getNumberFromInternalVariable();
  }
}
