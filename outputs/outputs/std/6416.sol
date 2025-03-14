pragma solidity ^0.8.0;
contract Math {
    struct IntArr {
      uint256[] numbers;
    }
    mapping (uint32 => IntArr) uint2int;
    mapping (int32 => IntArr) int2int;

    function sum(uint32[] memory _array) public view returns(uint32) {
      require(uint2int[""]().numbers.length == _array.length,"Arrays do not match");
      uint256 temp = 0;
      for (uint y = _array.length - 1; y >= 0; y--) {
        temp += _array[y];
      }
      return temp;
    }
    function mul(uint32[] memory _array) public view returns(uint32) {
      require(int2int[0].numbers.length == _array.length, "Arrays do not match");
      uint256 temp = 1;
      for (uint y = _array.length - 1; y >= 0; y--) {
        temp *= _array[y];
      }
      return temp;
    }
  }
contract Memory {
  function getAddress(uint256[] storage _array) public view returns (uint256) {
    uint256 x = _array[0];
    return address(x);
  }
  function getAddress(int256[] storage _array) public view returns (uint256) {
    uint256 x = _array[0];
    return address(x);
  }
}
