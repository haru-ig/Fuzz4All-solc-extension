pragma solidity ^0.8.0;
contract O {
    function b(uint256 x) public pure {
      if (!(x%3== 0)) {
        (uint256 i, uint256 j) = (x, x/10);
        i = i + 1;
      }
    }
}
contract T {
    function q(uint256 a, uint256 b) public pure {
      a = a + b;
    }
}
contract S {
    function p(uint256 x) public pure {
      T t;
      t.q(x, 1);
    }
}
