pragma solidity ^0.8.0;
contract Semantic3Changed {
    function balanceChange(uint160 _a) public pure {
      uint160 b;
      b = _a + 4 - 4;
      (uint160 c) = (b + 4) - 1;
      b = (_a - 4) + 4 - 4;
      (uint160 d) = (b + 4) - 1;

      assert(b == c + 1);
      assert(b == d + 1);
    }
}
