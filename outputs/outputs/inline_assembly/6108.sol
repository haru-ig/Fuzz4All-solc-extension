pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample17 {
  struct Mutated {
      uint256 x;
  }
  function main() public pure {
      Mutated memory x;
      x.x+=1;
      x.x+=1;
  }
}
contract MutatedSemanticallyEquivalentAssemblyExample22 {
  struct Mutated {
      address x;
  }
  function main() public pure {
      Mutated memory m;
      m.x+=m.x;
      m.x+=m.x;
  }
}
contract MutatedSemanticallyEquivalentAssemblyExample23 {
  struct Mutated {
      address x;
  }
  function main() public pure {
      Mutated memory m;
      m.x=address(0);
      m.x+=m.x;
      m.x+=m.x;
  }
}
contract MutatedSemanticallyEquivalentAssemblyExample24 {
  struct Mutated {
      bool x;
  }
  function main() public pure {
      Mutated memory m;
      m.x=true;
      m.x+=m.x;
      m.x+=m.x;
  }
}
contract MutatedSemanticallyEquivalentAssemblyExample25 {
  struct Mutated {
      address x;
  }
  function main() public pure {
      Mutated memory m;
      m.x += m.x;
      m.x += m.x;
  }
}
contract MutatedSemanticallyEquivalentAssemblyExample26 {
  struct Mutated {
      bool x;
  }
  function main() public pure {
      Mutated memory m;
      m.x = true;
      m.x += m.x;
      m.x += m.x;
  }
}
contract MutatedSemanticallyEquivalentAssemblyExample27 {
  struct Mutated {
      bool x;
  }
  function main() public pure {
      Mutated memory m;
      m.x = false;
      m.x += m.x;
      m.x += m.x;
  }
}
contract MutatedSemanticallyEquivalentAssemblyExample28 {
  struct Mutated {
      uint8 a;
