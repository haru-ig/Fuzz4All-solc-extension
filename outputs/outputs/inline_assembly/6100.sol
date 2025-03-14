pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample14 {
    Mutated memory x;
    x.x+=2;
    x.x++;
    function main() public pure {
        x.x+=5;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample15 {
    struct Mutated {
        uint256 x;
    }

    Mutated memory x;
    function main() public pure {
        x.x+=2;
        x.x++;
    }

    function setX(Mutated memory memoryX) public {
      x=memoryX;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample16 {
    struct Mutated {
        uint256 x;
    }
    Mutated memory x;
    function main() public pure {
        x=x;
        x.x+=2;
        x.x++;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample17 {
    struct Mutated {
        uint256 x;
    }
    Mutated memory x;
    function main() public pure {
        x=x;
        x.x+=2;
        x.x++;
    }

    function setX(Mutated memory memoryX) public {
        x=memoryX;
        x.x++;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample18 {
    struct Mutated {
        uint256 x;
    }
    function main() public pure {
        x.x+=2;
        x.x++;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample19 {
  struct Mutated {
      uint256 x;
  }
  function main() public pure {
      uint256 x=25;
      x+=2;
      x++;
  }
}
contract MutatedSemanticallyEquivalentAssemblyExample20 {
    struct Mutated {
        uint256 x;
    }
    function main() public pure {
        x=15;
        x+=2;
        x++;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample21 {
    struct Mutated {
        uint256 x;
    }

    Mutated memory m;

    function main() public pure {
        m.x=19;
        m.x+=2;
        m.x++;
