pragma solidity ^0.8.0;
contract SemanticSimilar16 {
  function f() public {
    uint[42] memory y;
    assembly {
      let i := 42
      astore(x, i)
    } astore(y, aload(x));
  }
}
