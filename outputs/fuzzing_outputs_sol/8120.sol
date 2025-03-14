pragma solidity ^0.8.0;
contract semanticEquivalent_
{
  uint8 a;
  uint8 b;
  uint16 c;
  uint8 d;
  uint16 e;
  SemanticEquivalentK7_[] arr;
  uint256 value;
  constructor(uint256 _value)
  payable
  {

    uint8 a = 255;

    uint8 b = 11;

    uint16 c = 88;

    uint8 d = 69;

    uint16 e = 9;

    arr = new SemanticEquivalentK7_[](7);

    value = _value;
  }
}
contract Caller_
{
  SemanticEquivalent_ semanticEquivalent;
  constructor(SemanticEquivalent_ _semanticEquivalent)
  {
    semanticEquivalent = _semanticEquivalent;
  }
  function func_Call()
  {
    uint256 _value = semanticEquivalent.semanticEquivalent.value;
  }
}
