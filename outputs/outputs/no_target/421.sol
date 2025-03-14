pragma solidity ^0.8.0;
contract Semantic2Changed {
    function balanceChange(uint160 _a) public pure {
      uint160 overflow;
      while (true) {
        (uint160 b; b) = (_a + 4) - 1;
        assert(4 + b + 1 == b);
        assert(4 + b + 2 > b);
        (uint160 c; c) = (b + 4) - 1;
        assert(4 + c + 1 == c);
        assert(4 + c + 2 == c);
        (uint160 d; d = overflow; overflow + 4) - 1;
        assert(4 + d - 1 == d);
        (uint160 e; e = overflow; overflow + 4) - 1;
        assert(4 + e - 1 == e);
      }
    }
}

pragma solidity ^0.8.0;
contract Semantic2Changed {
    function balanceChange(uint160 _a) public pure {
      uint160 c = ((_a + 4) - 1);
      uint160 d = (((_a + 4) - c) - 1);
      uint160 e = ((_a + 4) - (_a + 4));
      uint160 f = (_a.add(2));
      uint160 g = (_a.sub(2));
      uint160 h = (_a.mul(2)).add(_a.div(2));
      uint160 i = ((_a + 4) - 1) % 2);
      uint160 j = (_a | 4);
      uint160 k = _a & 2;

      uint160 l = (4 - (_a.add(_a)));
      uint160 m = (_a - _a + _a);
      uint160 n = (_a + _a).add(2);
      uint160 q = (_a + _a).sub(2);
      uint160 r = (_a << 3);
      uint160 s = (
