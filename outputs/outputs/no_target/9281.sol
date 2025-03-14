pragma solidity ^0.8.0;
contract semanticallyEquiv3{
    uint constant k = 104;
    function mod(uint x, uint m) public pure returns (uint) {
      uint remainder;
      assembly {
        remainder := mod(x, m)
        }
      return remainder;
    }
    function doMod(uint x, uint m) public pure returns (uint) {
      require(k > 0, "Assertion failed");
      require(mod(x, m) == k, "Failed");
      return mod(x, m);
    }
    function doMod2(uint x, uint m) public pure returns (uint) {
      require(m > 0, "Assertion failed");
      require(x % m == 0, "Failed");
      return x % m;
    }
}
