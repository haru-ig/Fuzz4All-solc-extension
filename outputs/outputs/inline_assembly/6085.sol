pragma solidity ^0.8.0;
struct Immutable1 {
  uint256 x;
}
contract MutableStateExample12 {
    function main() public pure {
        Immutable1 memory y;
        y.x++;
        y.x++;
    }
}
contract MutableStateExample13 {
    struct Mutated {
        uint256 x;
    }
    function main() public pure {
        Mutated memory y;
        y.x++;
        y.x++;
    }
}
contract CompositionExample14 {
  struct Immutable {
      uint256 x;
  }
  function main() public pure {
      Immutable memory i;
      i.x++;
      i.x++;
      i.x++;
  }
}
contract CompositionExample15 {
    struct Immutable1 {
        uint256 x;
    }
    struct Immutable2 {
        uint256 y;
    }
    function main() public pure {
        Immutable1 memory i;
        Immutable2 memory j;

        j.x = j.x() + j.y();
        j.y = 1;

        j.x++;
        j.x++;
        j.x++;
    }
    function h() public pure {
        Immutable1 memory i;
        i.x++;
    }
    function g() public pure {
        Immutable2 memory j;
        j.x = h() + i.x();
        j.x++;
        j.x++;
    }
    function f() public pure {
        Immutable2 memory j;
        j.x = h() + i.x();
        j.x++;
        j.x++;
    }
    function e() public pure {
        Immutable2 memory j;
        j.y = j.y() + h();
        j.x++;
        j.x++;
    }
}
contract DeeperCompositionExample16 {
  struct Immutable {
      uint256 x;
  }
  struct Immutable2 {
      uint256 y;
  }
  function main() public pure {
      Immutable memory i;
      Immutable2 memory j;

      j.x = i.x() + j.y();
      j.y = 1;

      i.x++;
      i.x++;
      i.x++;
  }
  function g() public pure {
      Immutable memory i;
      Immutable2 memory j;

      j.x = i.x() + j.y();
      j.y = 1;

      j.x++;
      j.x++;
      j.x++;
  }
  function h() public pure {
      Immutable
