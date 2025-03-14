pragma solidity ^0.8.0;
contract Semantically_equivalent_program {
  uint final variableA;
  uint constant constant_variableB;
  uint external_variableC;

  constructor() {
    final variableA = constant1;
    constant_variableB = variableA;
    external_variableC += variableA;
  }

  function internal_operation() external {
    external_variableC += constant_variableB;
  }

  function operation() public pure returns (uint) {
    return external_variableC / 2;
  }
}
