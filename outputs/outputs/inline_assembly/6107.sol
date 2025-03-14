pragma solidity ^0.8.0;
contract Example15 {
    struct Mutated {
        uint256 x;
    }
    function main() public pure {
        Mutated memory m; x.x+=2;
    }
    function main2() public pure {
        Mutated memory m; x.x+=2+x.x;
    }
    function main3() public pure {
        Mutated memory m; x.x+=2;
        x.x++;
    }
    function main4() public pure {
        Mutated memory m; x.x+=x;
    }
}
contract Example16 {
    struct Mutated {
        uint256 x;
    }
    function main() public pure {
        Mutated memory m; x.x+=x;
    }
    function main2() public pure {
        Mutated memory m; x.x+=2+x;
    }
    function main3() public pure {
        Mutated memory m; x.x+=2;
        x.x++;
    }
    function main4() public pure {
        Mutated memory m; x.x+=x;
        x.x++;
    }
}
contract Example17 {
    struct Mutated {
        uint256 x;
    }
    function main() public pure {
        Mutated memory m; x.x++;
    }
    function main2() public pure {
        Mutated memory m; x.x++;
    }
    function main3() public pure {
        Mutated memory m; x.x++;
    }
    function main4() public pure {
        Mutated memory m; x.x++;
    }
}
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
contract MutatedSemanticallyEquivalentAssemblyExample2 {
    struct Mutated {
        uint256 x;
        uint256 y;
    }
    function main() public pure {
        Mutated memory m; x.x+=x.y;
    }
    function main2() public pure {
        Mutated memory m; x.x+=x.y+1;
    }
    function main3() public pure {
        Mutated memory m; x.x+=x;
        x.x+=2;
    }
    function main4() public pure {
        Mutated memory m; x.x+=x;
        x.x+=
