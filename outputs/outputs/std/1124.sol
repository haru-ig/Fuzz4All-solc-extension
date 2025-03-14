pragma solidity ^0.8.0;



contract ArrayContract {
  function test1() public pure {
    uint256[] memory nums = [1, 2, 3, 6, 8];
    uint256 min = 99999;
    uint256 max = 9999;
    for (uint256 i = 0; i < nums.length; i++) {
      uint256 val = nums[i];
      if (val < min) {
        min = val;
      }
      if (val > max) {
        max = val;
      }
    }
    assert(min <= max);
  }

  function test2() public pure {
    uint256[] memory nums = [1, 2, 3, 6, 8, 12, 15, 19];
    uint256 min = 16666;
    uint256 max = 19999;
    for (uint256 i = 0; i < nums.length; i++) {
      uint256 val = nums[i];
      if (val < min) {
        min = val;
      }
      if (val > max) {
        max = val;
      }
    }
    assert(min <= max);
  }
}
