pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample14 {
  struct Mutated {
    uint256 x;
  }
  function main() public pure {
      Mutated memory x;
      x.x=2;
      x.x++;
  }
}
contract MutatedSemanticallyEquivalentAssemblyExample15 {
  struct Mutated {
    uint256 x;
  }
  function main() public pure {
      Mutated memory x;
      x.x=2;
      x.x=1;
  }
}
contract MutatedSemanticallyEquivalentAssemblyExample16 {


    struct Mutated2 {
        uint256 x;
    }
    function main() public pure {
        x.x+=2;
        x.x++;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample17 {

  struct Mutated2 {
    uint256 x;
  }
  function main() public pure {
      x.x+=2;
      x.x++;
  }
}
contract MutatedSemanticallyEquivalentAssemblyExample18 {

  struct Mutated2 {
    uint256 x;
  }
  function main() public pure {
      x.x+=2;
      x.x++;
  }
}

contract MutatedSemanticallyEquivalentAssemblyExample19 {

  struct Mutated2 {
    uint256 x;
  }
  function main() public pure {
      x.x+=2;
      x.x++;
  }
}
contract MutatedSemanticallyEquivalentAssemblyExample20 {

  struct Mutated2 {
    uint256 x;
  }
  function main() public pure {
      x.x=0;
      x.x++;
      x.x++;
      x
