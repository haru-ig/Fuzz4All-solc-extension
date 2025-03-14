pragma solidity ^0.8.0;
contract SemanticEquals
{
  uint8 a;
  uint8 b;
  uint16 c;
  uint8 d;
  uint16 e;
  event GotPayable(uint8, uint8, uint16, uint8, uint16, uint16);
  constructor()
  {
    emit GotPayable(c,b,b,a,a,a);
    emit GotPayable(b,b,a,a,a,a);
  }
}
contract SemanticDifferent
{
  uint8 a;
  uint8 b;
  uint16 c;
  uint8 d;
  uint16 e;
  event GotPayable(uint8, uint8, uint16, uint8, uint16, uint16);
  constructor()
  {
    emit GotPayable(b,b,b,a,a,b);
    emit GotPayable(b,b,a,a,b,a);
  }
}
contract FallbackFunction
{
  SemanticEquivalent semanticEquivalent;
  SemanticEquals semanticEquals;
  SemanticDifferent semanticDifferent;
}
contract Caller
{
  fallback() external {
    FallbackFunction fallbackFunction;
    fallbackFunction.semanticEquivalent.emit(42,42,42,42,42,42);
    fallbackFunction.semanticEquals.emit(23,23,23,23,23,23);
    fallbackFunction.semanticDifferent.emit(2,2,2,2,2,2);
  }
}
