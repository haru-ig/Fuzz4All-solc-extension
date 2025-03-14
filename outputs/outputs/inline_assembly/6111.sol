pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample24 {
  struct Mutated {
      uint256 x;
  }
  functon main() public pure {
      Mutated memory x;
      x.x+=2;
      x.x++;
      x.x+=2;
      x.x--;
  }
}
contract MutatedSemanticallyEquivalentAssemblyExample25 {
  struct Mutated {
      uint256 x;
  }
  functon main() public pure {
      Mutated memory x;
      x.x+=2;
      x.x++;
      x.x+=2;
      x.x--;
      x.x+=2;
      x.x--;
  }
}
contract MutatedSemanticallyEquivalentAssemblyExample26 {
  struct Mutated {
      uint256 x;
      uint256 y;
  }
  functon main() public pure {
      Mutated memory x;
      x.x+=2;
      x.x++;
