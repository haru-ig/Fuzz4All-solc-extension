pragma solidity ^0.8.0;
library TestLib {
    function log1(uint96 x) public pure returns (uint, uint161, uint168, uint320, uint322, uint256) {
      (uint, uint16 o1, uint168 o2, uint320 o3, uint322 o4, uint256 o5) = x;
      x;
      o1;
      o2;
      o3;
      o4;
      o5;
    }
}

pragma solidity ^0.8.0;
library TestLib {
    function log1(uint96 x) public pure returns (uint, uint16, uint168, uint320, uint322, uint256) {
      (uint, uint16 o1, uint168 o2, uint320 o3, uint322 o4, uint256 o5) = x;
      uint16;
      uint168;
      uint320;
      uint322;
      uint256;
      x;
      o1;
      o2;
      o3;
      o4;
      o5;
    }
}
