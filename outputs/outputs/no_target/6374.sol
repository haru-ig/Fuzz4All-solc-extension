pragma solidity ^0.8.0;
contract mutatedC {
    function f1(uint8 a) public returns (uint256) {
      uint256 b = 1/(a+2);
      b = 2*(b+1);
      uint256 c = b+2;
      uint8 d = 66;
      return 2*(d-1);
    }

    function f2(uint8 a) public returns (uint256) {
      uint256 b = 1/(a+2);
      uint8 d = 66;
      uint256 x = 100 / (2/k);
    }
}
