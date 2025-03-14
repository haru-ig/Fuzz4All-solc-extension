pragma solidity ^0.8.0;
contract SemanticSimilar16 {
  function f() public {
    uint8 x;
    assembly {
      let i := 0x42
      x := i
    }
    x = x + 10;
  }
}
address contractA;
address contractB;
contract Callers {
  function callAAndPassEtherToSimplified(uint x) external returns (uint) {
    contractA.transfer(x);
    return add(x, x);
  }
  function callBAndPassEtherToSimplified(address _to, uint y) external returns(uint) {
    contractB.transfer(_to, y);
    return add(y, y);
  }
}
contract SemanticSimilar17 {
  function f() public {
    Callers c = new Callers();
    uint _ = c.callAAndPassEtherToSimplified(0);
    uint _ = c.callBAndPassEtherToSimplified (contractA, 1);
  }
}
