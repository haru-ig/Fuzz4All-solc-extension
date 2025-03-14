pragma solidity ^0.8.0;
interface Immutable {
    uint256 x;
}
contract MutatedMutations {
    uint256 x;
    function MutatedMutations() public {
      x = 0xfee;
    }
    function main() public pure {
      Immutable memory x;

      x.x++;
      x.x++;
    }
}
contract MutatedSemantismallyEquivalentAssembly {
  struct Mutated {
      uint256 x;
  }
  function main() public pure {
      Mutated memory x;

      x.x++;
      x.x++;
  }
  function Mutated(uint256 _x) public {
      x.x = _x;
  }
}
contract NonOptimizedInlineAssembly {
  function main() public pure {
      uint256 x = 1;
      x--;
      x--;
  }
}
contract OptimizedInlineAssembly {
  function main() public pure {
      uint256 x = 10;

      for (uint256 i = 0; i < 50999; i++) {
          x = sub(x,1);
      }
  }
}
contract SolidityContract {

  function main() public pure {

  }

}
