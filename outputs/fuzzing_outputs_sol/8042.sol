pragma solidity ^0.8.0;
contract SemanticEquivalent
{
  function test() external {
    a = 20;
    b = 21;
    c = 22;
    d = 23;
    e = 24;
    a = 25;
    b = 26;
    c = 27;
    d = 28;
    e = 29;
    f = 20;
    g = 21;
    h = 22;
  }
}
