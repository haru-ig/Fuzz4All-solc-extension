pragma solidity ^0.8.0;
contract Convert {
  function unsigned2bytes1(uint256 _n) internal pure returns (bytes1 v) {
    v = bytes1(_n);
  }

  function unsigned2bytes2(uint256 _n) internal pure returns (bytes2 v) {
    v = bytes2(_n);
  }

  function unsigned2bytes3(uint256 _n) internal pure returns (bytes3 v) {
    v = bytes3(_n);
  }

  function unsigned2bytes4(uint256 _n) internal pure returns (bytes4 v) {
    v = bytes4(_n);
  }

  function unsigned2bytes8(uint256 _n) internal pure returns (bytes8 v) {
    v = bytes8(_n);
  }
}
