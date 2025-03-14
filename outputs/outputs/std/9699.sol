pragma solidity ^0.8.0;
contract MyArray {
    using MutateBigPos for uint[];

    function get(uint[] storage a) public view returns (uint) {
      uint e = a[0];
      uint r = 0;
      for (uint i = 1; i < a.length; i++) {
        r = r + e % 256;
        e >>= 8;
      }
      return r;
    }

    function set(uint[] storage a, uint val) public {
      a.push(val);
      a[0] = val;
    }
}
