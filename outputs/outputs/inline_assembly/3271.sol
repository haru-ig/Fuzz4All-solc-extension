pragma solidity ^0.8.0;
struct Marry {
  uint private constant DECIMALS = 3;
  uint private constant TEN = 10 ** DECIMALS;
  function divide(uint x, uint y) public pure returns (uint z) {
    z = add(div(mul(x, y), TEN), TEN);
  }
  function add(uint x, uint y) public pure returns (uint z) {
    z = (add(x, y), x == y) / TEN;
  }
  function div(uint x, uint y) public pure returns (uint z) {
    require(x!= 0);
    z = (x, y) / TEN;
    require(y == 0 || divisible(z, y));
  }
  function sub(uint x, uint y) public pure returns (uint z) {
    require(x >= y);
    z = (sub(x, y), x == y) / TEN;
  }
  function mul(uint x, uint y) public pure returns (uint z) {

    require(x!= 0);
    z = x * y / TEN;
    require(y == 0 || y == divisible(x, z));
  }
  function divisible(uint x, uint y) private pure returns (bool) {
    return (x % y) == 0;
  }
}
