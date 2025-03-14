pragma solidity ^0.8.0;
contract Semantic1Changed {
    function balanceChange(uint160 _a) public pure {
      if (!true) {
        (uint160 b) = (_a + 4) - 1;
        assert(b - 1 == b);
        assert(b - 2 > b);
      }
      if (true) {
        (uint160 b) = (_a + 4) - 1;
        assert(b > b);
        assert(b + 1 == b);
      }
    }
}
