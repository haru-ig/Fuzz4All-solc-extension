pragma solidity ^0.8.0;
contract newY {
    uint256 public y = 888;
    uint256 z;
    constructor () public {
      uint256 x;
      while (x!= 123) {
        x++;
        z = x + y;
      }
    }
}
contract test {
    function test1() public {
      uint256 z;
      z += 2 * 4;
      require(4 <= z, 'bad');
    }
    function test2() public {
      uint256 z;
      z += 2 * 4;
      bool b; z += 2 * 4;
      require((0 <= z) && (z <= 12), 'bad');
      require(1 == 0, 'bad2');
    }
}
