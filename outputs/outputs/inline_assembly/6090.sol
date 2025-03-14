pragma solidity ^0.8.0;
struct Immutable {
  uint256 x;
}
contract MutatedSemanticallyEquivalentAssemblyExample12 {
    function main() public pure {
        Immutable memory x;
        Immutable memory y = x;
        y.x++;
        y.x++;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample13 {
  struct Mutated {
      uint256 x;
  }
  struct YetAnother {
      Mutated memory x;
  }
  function main() public pure {
        Mutated memory x;
        Mutated memory y = x;
        YetAnother memory z = y;
        z.x.x++;
  }
}
contract MutatedSemanticallyEquivalentAssemblyExample14 {
  struct Mutated {
      uint256 x;
  }
  struct YetAnother {
      Mutated memory x;
  }
  function main() public pure {
        Mutated memory x;
        Mutated memory y = x;
        y.x++;
        y.x.x++;

    }
}
contract MutatedSemanticallyEquivalentAssemblyExample15 {
  struct Mutated {
      uint256 x;
  }
  struct YetAnother {
      Mutated memory x;
  }
  function main() public pure {
        Mutated memory x;
        Mutated memory y = x;
        y.x = 0;

    }
}
contract MutatedSemanticallyEquivalentAssemblyExample16 {
  struct Mutated {
      uint256 x;
  }
  struct YetAnother {
      Mutated memory x;
  }
  function main() public pure {
        Mutated memory y;


        Mutated memory x = y;
        x.x++;

    }
}
contract MutatedSemanticallyEquivalentAssemblyExample17 {
  struct Mutated {
      uint256 x;
  }
  struct YetAnother {
      Mutated memory x;
  }
  function main() public pure {
        Mutated memory x;
