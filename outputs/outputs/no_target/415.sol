pragma solidity ^0.8.0;
contract Semantic2Changed {
    function balanceChange(uint160 _a) public pure {
      uint8 k = byte(4);
      uint8 n = uint8(_a);
      uint160 b = (4 + (_a * 4)) + (uint160(4) + 1);
      b = (_a * 4) + (b + 1);
      b = (_a * 4) + b;
      b = uint160((_a * 4)) + (uint160(4) + 2);
      b = (_a * 4) + (b + 1);
      bool x = (uint160((_a * 4)) + k + 1) == b;
      bool x = ((_a * 4)) + k + 2 == b;
      function f() internal pure { return 4 + (_a + 1); }
      (4 + (_a * 4));
      assert(f() == 4 + (_a + 1));
      assert(f() == 4 + (_a + 1));
      assert(f() == 4 + (_a + 1));
      b = f();
      (4 + (_a * 4));
      assert(b == 4 + (_a + 1));
      assert(bytes(b).length == 7);
      assert(bytes(_a).length == 7);
      b = uint160((_a * 4)) + k + 1;
      assert(b == f());
      assert(bytes(b).length == 7);
      assert(bytes(_a).length == 7);
      assert(!_a.equal(uint160((_a * 4)) + k));
      assert(!_a.equal(uint160((_a * 4)) + (k + 1)));
      assert(!_a.equal(uint160((_a * 4)) + (byte(k) + 1)));
      assert(!255.equal(_a));
      b = uint160(uint8(_a));
      uint160 w = 127;
      while (true) {
        assert(uint160((_a * 4)) + k < 3276800);
        assert(uint160((_a * 4)) + (byte(k) + 1) < w);
        assert(uint160((_a * 4)) + (byte(k) +
