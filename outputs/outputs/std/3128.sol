pragma solidity ^0.8.0;
contract BasicMath {
  function max(uint a, uint b) public pure returns (uint) {
    if( a > b ) {
      return a;
    }
    return b;
  }
  function min(uint a, uint b) public pure returns (uint) {
    if( a < b ) {
      return a;
    }
    return b;
  }
  function sqrt(uint a) public pure returns (uint) {
    return a/(uint(10**10) ** 18);
  }
  function modulo(uint a, uint m) public pure returns (uint){
    if (m < 2) return m;

    if ((a % m) == 0) return a;

    return a - (m * (a / m + 1));
  }
}
