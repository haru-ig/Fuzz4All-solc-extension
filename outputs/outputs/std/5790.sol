pragma solidity ^0.8.0;
contract Mutated4 {

    function mutate4(uint[3] memory x) public {
        x[1] = 10;
        x[2] = x[2] + 2;
      }

      function mutate3(Mutated3 memory m) public
      {
        uint[] memory _a = new uint[](2);
        uint[3] memory _a2;

        _a[0] = m.get();
        _a[1] = m.get();
        _a2 = multiply(_a[0], _a[1]);

        m.store(_a2);
      }

      function mutate3a(Mutated3 memory m) public
      {
        uint[3] memory _a;
        _a[0] = m.get();
        _a[1] = m.get();
        uint[3] memory _a2 = multiply_10(_a[0], _a[1]);
        m.store(_a2);
      }

      function mutate2(uint memory v0, uint memory v1) public {
        uint x;
        x = v0 + v1;
      }
}
