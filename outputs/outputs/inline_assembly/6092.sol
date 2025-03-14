pragma solidity ^0.8.0;
struct Immutable {
  uint256 x;
}
contract MutatedSemanticallyEquivalentAssemblyExample12 {
    function main() public pure {
        Immutable memory x;
        x.x++;
        x.x++;
        x.x++;
        x.x++;
        x.x++;
        x.x++;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample13 {
  struct Mutated {
      uint256 x;
  }
  function main() public pure {
      Mutated memory x;
      x.x++;
      x.x++;
      x.x++;
      x.x++;
      x.x++;
      x.x++;
      x.x++;
  }
}
contract MutatedSemanticallyEquivalentAssemblyExample14 {
  struct Immutable {
    uint256 x;
  }
  struct Mutated {
    uint256 y;
    uint256 x;

    constructor(){
        Immutable memory x;
        x.x++;
        x.x++;
    }

    modifier setY(
        uint256 y
    )
    {
        Immutable memory x;
        x.x++;
        x.x++;
        x = Immutable(y);
        require(x.x == y);
        _;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample15 {
  struct Mutated {
    uint256 y;
    uint256 x;

    constructor(){
        Immutable memory x;
        x.x++;
        x.x++;
    }

    function main() public pure {
        setY(1);
        setY(1);
    }
}

pragma solidity ^0.8.0;
contract Immutable0 {
    Immutable immutable;
    function main() public pure {
        immutable.x++;
        immutable.x++;
        immutable.x++;
    }
}
