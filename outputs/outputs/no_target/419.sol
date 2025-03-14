pragma solidity ^0.8.0;
contract Semantic2Changed {
    function balanceChange(uint160 _a) public pure {
      while (true) {
        (uint160 b) = (_a + 4) - 1;
        assert(4 + b + 1 == b);
        assert(4 + b + 2 > b);
        (uint160 c) = (b + 4) - 1;
        assert(4 + c + 1 == c);
        assert(4 + c + 2 == c);
      }
    }
}
