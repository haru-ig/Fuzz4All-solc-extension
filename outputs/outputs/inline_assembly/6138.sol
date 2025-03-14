pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample27 {
  struct Mutated {
      uint256 x;
      uint256 y;
      uint256 z;
  }
  function main() public pure {
    Mutated memory x;
    uint256 a;
    x.x=x.x+x.y;
    x.x=x.x+x.y;
    x.x=x.x+x.y;
    x.y=x.y+x.y;
    x.y=x.y+x.y;
    x.y=x.y+x.y;
    x.x=x.x+x.y;
    x.x=x.x+x.y;
    x.x=x.x+x.y;
    x.y=x.y+x.y;
    x.y=x.y+x.y;
    x.y=x.y+x.y;
  }
}
pragma solidity 0.8.0;

contract SolidityAssemblyExample28 {
  assembly {
      var x := 42
    mstore(add(x, 65), 97)
    x := astore(add(x, 72), x)
  }
}
