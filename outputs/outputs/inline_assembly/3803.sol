pragma solidity ^0.8.0;
contract SemanticallyEquivalent8 {
  constructor () {
    uint256 constant _a = 110;
    uint256 constantVal = 440;
    uint256 _d = constant(_a,550);
  }
  function constant(uint256 value2, uint256 value) pure public returns (uint256) {
    uint256 _i;
    assembly {
      _i := value.leudiv(value2)
      value := _i
    }
    return _i;
  }
}
