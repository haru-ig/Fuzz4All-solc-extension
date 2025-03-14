pragma solidity ^0.8.0;
contract Array {
    uint256[] public x;
    uint256 public constant arraySize = 5;

    function getMin(uint256[] memory values) public pure returns (uint256) {
      uint256 min = Math.min(values[0], values[1], values[2], values[3], values[4]);
      return min;
    }

}
