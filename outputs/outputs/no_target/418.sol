pragma solidity ^0.8.0;
contract Semantic2Changed {
    function balanceChange(uint _a) public pure {
      while (true) {
        (uint b) = (uint(_a)) - 4;
        assert((uint(_a)) + 4 - 1 == b);
        assert((uint(_a)) + 4 - 2 > b);
        (uint c) = (b) + 1;
        assert(uint(_a) + 4 + 1 == c);
        assert(uint(_a) + 4 + 2 == c);
      }
    }
}
