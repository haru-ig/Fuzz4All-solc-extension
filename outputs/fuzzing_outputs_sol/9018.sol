pragma solidity ^0.8.0;
contract Mutate {
  uint counter;
  constructor() {
    counter += 1;
  }
  function add(uint x) public {
    x += 1;
    if (x > 100) {

      x -= 1;
    }
    counter += x;
  }
}
pragma solidity ^0.8.0;
contract Multiply {
  uint counter;
  function mul(uint x, uint y) public pure returns (uint) {
    return x * y;
  }
  function square(uint x) public pure returns (uint) {
    return x * x;
  }
  function mulAdd(uint x, uint y) public pure returns (uint) {
    return x * y + mul(10, x);
  }
  function main() payable {
    uint n = 3;
    uint a = mul(2, n);
    uint b = square(9);
    uint c = mulAdd(n, b);
    uint result = mulAdd(a, b);
    if (a * b * 2 + n == result) {

    }
  }
}
