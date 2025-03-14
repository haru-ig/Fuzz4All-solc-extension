pragma solidity ^0.8.0;
library Array {
  using SafeMath for uint256;

  bytes4 internal constant LENGTH_SELECTOR = 0x9e372a06;

  function length(uint256 a) internal pure returns (uint256) {
    return a.length;
  }

  function get(uint256 value, uint256 index) internal pure returns (uint256) {
    if(index >= length(value)) {
      revert("ARRAYOVERFLOW");
    }
    uint256 i = index;
    while (i-- > 0) {
      value = value.div(256);
    }
    return value;
  }

  function set(uint256 a, uint256 index, uint256 value) internal {
    if(length(a) == 0 || index == 0)  a[0] = value;
    if(a.length.div(10) > length(a).div(10))
    a.length --;
    a[index] = value;
  }

  function min(uint256 a) internal pure returns (uint256)
  {
    if(a.length == 0)
    return 0;
    else if(a.length == 1)
    return a;
    uint256 min = a[0];
    for(uint256 i=1; i<length(a); i++)
    if(min > a[i])
    min = a[i];
    return min;
  }

  function max(uint256 a) internal pure returns (uint256)
  {
    if(a.length == 0)
    return 0;
    else if (a.length == 1)
    return a;
    uint256 max = a[0];
    for(uint256 i=1; i<length(a); i++)
    if(max < a[i])
    max = a[i];
    return max;
  }
  /**
  * @dev Gets the sum of all the elements in the array `a`.
  * @notice Assumes array doesn't have any 0, 1,
