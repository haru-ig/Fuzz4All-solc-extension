pragma solidity ^0.8.0;
contract Mutability8 {
  constructor () {
    setConstantValue(999);
  }
  modifier onlyConstantModifiable(uint _h) {
    require(_h == constantValue, "this func must get h");
    _;
  }
  function setConstantValue(uint _h) public onlyConstantModifiable(_h) {
    constantValue = _h;
  }
  uint constant constantValue = 1000;
  function x() pure public returns (uint h) {
    return uint(
      (constantValue)
    );
  }
}
