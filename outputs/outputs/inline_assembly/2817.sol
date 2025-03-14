pragma solidity ^0.8.0;
contract B {
    constructor(uint64 _z) public {
        z = div(_z);
    }
    uint64 private div(uint64 x) private pure returns (uint64) {
        return x / 10;
    }
    uint public z;
}

contract SafeMath {
  function mul(uint, uint) internal pure returns (uint) {

    uint256 a;
    if (a / x == 0) {
      return 0;
    }
    return (a * y) / x;
  }
}
