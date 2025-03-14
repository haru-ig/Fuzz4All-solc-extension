pragma solidity ^0.8.0;
struct B { uint256 x; }
contract M1 {
  uint256 constant ONE = 1;
  function modifyB2() public {
    B storage s = modifyB(B({x: ONE}));
  }
  function modifyB(B memory b) internal pure returns (B storage) {
    b.x *= ONE;
    b.x /= ONE;
    return b;
  }
}
contract M2 {
  uint256 constant ONE = 1;
  function modifyB3() public {
    B memory b = modifyB(B({x: ONE}));
    b.x *= ONE;
    b.x /= ONE;
  }
  function modifyB(B memory b) internal pure returns (B memory) {
    b.x *= ONE;
    b.x /= ONE;
    return b;
  }
}
contract Main {
  function main() public {
    MutatorS8 x = MutatorS8(new MutatorS8());
    x.mutate();
    x.mutate();
    x.mutate();
  }
}
