pragma solidity ^0.8.0;
contract Array {
  function find_min(uint256[] memory x) internal returns (uint256) {
    uint256 min_element = x[0];
    uint256 min_index = 0;
    for (uint256 i; i < x.length; i++) {
      uint256 temp = x[i];
      if (min_index == 0) {
        min_index = i;
      }
      if (temp < min_element) {
        min_element = temp;
        min_index = i;
      }
    }
    return min_element;
  }

  function find_max(uint256[] memory x) internal returns (uint256) {
    uint256 max_element = x[0];
    uint256 max_index = 0;
    for (uint256 i; i < x.length; i++) {
      uint256 temp = x[i];
      if (max_index == 0) {
        max_index = i;
      }
      if (temp > max_element) {
        max_element = temp;
        max_index = i;
      }
    }
    return max_element;
  }

  function find_sum(uint256[] memory x) internal returns (uint256) {
    uint256 sum = 0;
    for (uint256 i; i < x.length; i++) {
      sum += x[i];
    }
    return sum;
  }

  function set_array(uint256[] memory a) internal {
    a[0] = 1;
  }

  function get_array(uint256[] memory a) internal returns (uint256[] memory) {
    return a;
  }

  function sort_array(uint256[] memory a) internal {
    for (uint256 i; i < a.length; i++) {
      uint256 max_index = 0;
      uint256 temp_element;
      for (uint256 j; j < a.length; j++) {
        if (j == i) {
          continue;
        }
        uint256 temp = a[j];

        if (max_index == 0) {
          max_index = j;
        }
        if (temp > a[max_index]) {
          max_index = j;
        }
      }
      if (i == max_index) {
        continue;
      }
      uint256 temp_value = a[i];
      a[i] = a[max_index];
      a[max_index] = temp_value;
    }
  }
}
