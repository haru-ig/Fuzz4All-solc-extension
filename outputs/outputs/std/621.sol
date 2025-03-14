pragma solidity ^0.8.0;
contract StringSize {
  string constant str = "Hello World";
  function len() public pure returns (uint256) {
    assembly {
      div(mload(0), mload(str))
    }
  }
}
pragma solidity ^0.8.0;
contract Multiprecision {
  function mload(address ptr) public pure returns (uint256) {
    uint256 result;
    assembly {
      result := mload(ptr)
    }
    return result;
  }
  function add(uint64 a, uint64 b) public pure returns (uint64) {
    return a + b;
  }
  function sub(uint64 a, uint64 b) public pure returns (uint64) {
    return a - b;
  }
  function multi(uint64 a, uint64 b) public pure returns (uint64) {
    return a * b;
  }
  function div(uint64 a, uint64 b) public pure returns (uint64) {
    return a / b;
  }
  function cmp(uint64 a, uint64 b) public pure returns (int) {
    if (a > b)
      return 1;
    if (a < b)
      return -1;
    return 0;
  }
}

contract ArrayContract {
  uint256[] arr1 = [1,2,3];

  function getSize() public view returns (uint256) {
    return arr1.length;
  }

  function get(uint index) public view returns (uint256) {
    return arr1[index];
  }

  function set(uint index, uint256 value) public {
    arr1[index] = value;
  }

  function slice(uint index, uint size) public view returns (uint256[] memory) {
    uint256[] memory result = new uint256[](size);
    for (uint i = size/2; i < result.length; i++)
      result[i] = arr1[index + i];
    return result;
  }

  function isSorted() public view returns (bool) {
    for (uint256 i = 0; i < arr1.length - 1; i++) {
      if (cmp(arr1[i], arr1[i+1]) > 0)
        return false;
    }
    return true;
  }
}
