pragma solidity ^0.8.0;
struct Immutable {
  uint256 x;
}
contract MutatedMutatedAssemblyExample12 {
    function main() public pure {
        Immutable memory x;
        x.x++;
        x.x++;
        x.x++;
    }
}

contract MutatedMutatedAssemblyExample13 {
  struct Mutated {
      uint256 x;
  }
  function main() public pure {
      Mutated memory x;
      x.x++;
      x.x++;
      x.x++;
  }
}
contract MutatedSemanticallyEquivalentAssemblyExample14 {
  function main() public pure {
      Immutable memory x;
      x.x++;
      x.x++;
      x.x++;
      x.x++;
      x.x++;
  }
}

contract MutateSemanticallyEquivalentAssemblyExample20 {
    function main() public pure {
      uint immutable c = 3;
      {
          c = 4;
          Immutable memory x;
          x.x++;
          x.x--;
      }
      assert (c == 4);
    }
}
contract MutateSemanticallyEquivalentAssemblyExample21 {
  struct Mutated {
    uint immutable c;
  }
  function main() public pure {
      uint immutable c = 3;
      {
          c = 4;
          Mutated memory x;
          x.x++;
          x.x--;
      }
      assert (c == 4);
  }
}

pragma solidity ^0.8.0;

contract MutatedMutatedAssemblyExample30 {
  struct Mutated {
      uint immutable a;
  }

  struct Immutable {
      uint immutable b;
  }

  function main() public pure {
    Immutable memory a;
    Immutable memory b;
    Mutated memory c;
    c.a++;
    c.a--;
    a.b++;
    a.b--;
  }
}
contract MutatedMutatedAssemblyExample31 {
  struct Mutated {
      uint immutable a;
      uint immutable b;
  }

  struct Immutable {
      uint immutable c;
      uint immutable d;
  }

  function main() public pure {
    Immutable memory a;
    Immutable memory c;
    a.c = 2;
    c.b = 2;
    Mutated memory b;
    b.a++;
    b.a--;
    c.d--;
    c.d++;
    b.b++;
    b.b--;
  }
}
contract Mutated
