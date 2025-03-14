pragma solidity ^0.8.0;
contract Semantic2Changed2 {
    function balanceChange(uint8 _a) public pure {
      uint160 b;
      assert(12 + _a + 1 == _a);
      assert(12 + _a + 2 == _a);
      assert(12 + _a + 3 > _a);
      b = _a; while (true) {
        assert(12 + (b - _a) + 2 == _a);
        assert(12 + (b - _a) + 3 > _a);
      }
    }
}
