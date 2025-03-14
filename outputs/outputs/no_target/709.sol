pragma solidity ^0.8.0;
contract E100 {
  using Math for uint256;
  uint256 public constant A = 100 ether;
  uint256 public constant MIN = 0.3 ether;
  uint256 public constant MAX = 10 ether;
  uint256 public constant B = 2;
  modifier onlyValidValues {
    require(value >= MIN && value <= MAX, "invalid value");
    _;
  }
  function test() public payable virtual onlyValidValues returns (uint256) {
    uint256 a = 2;
    uint256 b = a.add(5) * 3;
    return value.add(a).add(a.add(a)).add(A.add(b)).add(Math.multiply(a, b)).add(b).add(Math.multiply(a.add(B), (b * 5))).add(4).add(A / B.add(b + a.add(1))).add(a.add(b));
  }
}
/* 123
3210000000000000000000000000000000000000
32128321000000000000000000000000000000000
32100000000000000000000000000000000000000
32100000000000000000000000000000000000000
3210000000000000000000000000000000000000
32100000000000000000000000000000000000000
3210000000000000000000000000000000000000
3210
