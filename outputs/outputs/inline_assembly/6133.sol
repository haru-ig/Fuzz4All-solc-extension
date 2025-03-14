pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample27 {
  struct Mutated {
      uint256 x;
      uint256 y;
  }
  function main() public pure {
      Mutated storage x;
      Mutated storage y;
      x.x=x.x+x.y;
      x.x=x.x+y.y;
      x.x=x.x+x.y;
      y.x=y.x+x.y;
      x.y=x.y+y.x;
      x.y=x.y+x.x;
      y.y=y.y+x.x;
  }
}


contract SemanticallyEquivalentAndNonMutatedExamples28 {
    struct NonMutated {
        uint256 x;
        uint256 y;
    }

    struct Mutated {
        uint256 x;
        uint256 y;
    }

    function main() public pure {
        Mutated storage x = new Mutated();
        Mutated storage y = new Mutated();
        x.x = x.x + x.y;
        x.x = x.x + y.y;
        x.x = x.x + x.y;
        y.x = y.x + x.y;
        x.y = x.y + y.x;
        x.y = x.y + x.x;
        y.y = y.y + x.x;
    }
}


pragma solidity ^0.8.0;
contract NonMutatedSemanticallyEquivalentAssemblyExample26 {
    struct Mutated {
        uint256 x;
        uint256 y;
    }
    function main() public pure {
        Mutated storage x;
        Mutated storage y;

        x.x=x.x+x.y;
        x.x=x.x+y.y;
        x.x=x.x+x.y;
        y.x=y
