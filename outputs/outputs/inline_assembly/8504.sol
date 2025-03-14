pragma solidity ^0.8.0;
contract Solution
{
    function Get(uint _n) public pure returns (uint) {
      if (_n < 0) { _n.sub(abs(_n)); }
      else if (_n <= 0) return 1;
      uint  r;
      uint  t = 1;
      if (_n < t) {
        do {
          r = r*2 + 1;
          t = t * 2;
        }
        while(_n >= t);
      }
      return r;
    }
}
