pragma solidity ^0.8.0;

struct Immutable {
    uint256 x;
}

struct Mutated {
    uint256 x;
}
contract MutatedSemanticallyEquivalentAssemblyExample12 {

  contract Immutable {
      uint256 x;
  }

  contract Mutated {
      uint256 x;
  }
  function main() public pure {
      Immutable memory x;
      x.x++;
      x.x++;
  }
}
contract MutatedSemanticallyEquivalentAssemblyExample13 {

  struct Immutable {
      uint256 x;
  }

  struct Mutated {
      uint256 x;
  }

  struct Mutable {
      uint256 x;
  }

  struct MutatedMutable {
      uint256 x;
  }
  function main() public pure {
      Immutable memory x;
      x.x++;
      x.x++;
  }
}
contract MutatedSemanticallyEquivalentAssemblyExample14 {
    struct Immutable {
      uint256 x;
    }
    struct Mutated {
      uint256 x;
    }
    constructor() public {
        Immutable memory _x;
        Immutable memory y;
        y.x++;
        _x.x = y.x;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample15 {
    struct Immutable {
      uint256 x;
    }
    struct Mutated {
      uint256 x;
    }
    struct Mixed {
      Immutable x;
      Mutated y;
    }
    constructor() public {
        Mixed memory x;
        Immutable memory y;
        y.x++;
        x.x = y.x;
        x.y = Immutable(2).x;
        x.y.x++;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample16 {
    struct Immutable {
      uint256 x;
    }
    struct Mutated {
      uint256 x;
    }
    struct Mixed {
      Immutable x;
      Mutated y;
    }
    constructor() public {
        Mixed memory x;
        x.x = Immutable(2).x;
        x.x.x = 2;
        x.y.x++;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample17 {
    struct Immutable {
      uint256 x;
    }
    struct Mutated {
      uint
