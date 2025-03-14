pragma solidity ^0.8.0;
contract SemanticSimilar11 {
  enum Enum {
    Value1,
    Value2,
    Value3,
    Value4,
    Value5,
    Value6,
    Value7,
    Value8,
    Value9,
    Value11,
    Value10
  }
  uint constant k = 14;
  Enum enum1;
  uint public value = 20;
  uint public value1;
  uint getVal() public view returns (uint) {
    return value;
  }
  function changeVal(uint newValue) public {
    value = newValue;
  }
  function getValue() public view returns (uint) {
    return value;
  }
}
