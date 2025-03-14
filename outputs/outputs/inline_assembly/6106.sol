pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample18 {
  struct Mutated {
      uint256 x;
  }
  function main() public pure {
      Mutated memory x;
      x.x+=2;
      x.x++;
  }
}
contract MutatedSemanticallyEquivalentAssemblyExample19 {
    struct Mutated {
        uint256 x;
    }
    function main() public pure {
        Mutated memory x;
        x.x+=2;
        x.x++;
        x.x+=3;
        x.x++;
        x.x+=4;
        x.x++;
    }
}

pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample20 {
  struct Mutated {
      uint256 x;
  }
  function main() public pure {
      Mutated memory x;
      x.x=x.x;
      x.x+=2;
      x.x++;
  }
}
contract MutatedSemanticallyEquivalentAssemblyExample21 {
  struct Mutated {
      uint256 y;
  }
  function main() public pure {
      Mutated memory x;
      x.y=x.y;
      x.y+=2;
      x.y++;
  }
}
contract MutatedSemanticallyEquivalentAssemblyExample22 {
  struct Mutated {
      uint256 x;
      uint256 y;
  }
  function main() public pure {
      Mutated memory x;
      x.x+=2;
      x.x++;
      x.y+=2;
      x.y++;
      x.y++;
  }
}
contract MutatedSemanticallyEquivalentAssemblyExample23 {
  struct Mutated {
      uint256 x;
      uint256 y;
  }
  function main() public pure {
      Mutated memory x;
      x.x+=2;
      x.x++;
      x.y+=2;
      x.y++;
      x.y++;
      x.x+=2;
      x.y++;
  }
}
