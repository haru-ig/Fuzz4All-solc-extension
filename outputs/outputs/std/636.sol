pragma solidity ^0.8.0;
import "./Convert.sol";
contract Array {

  function add(uint x, uint y) public pure returns (uint) {
    return x + y;
  }

  function address(uint x, uint y) public pure returns (address) {
    return address(uint16(uint(x) | uint(y) << 16));
  }


  function getMax(uint[] memory arr) public pure returns (uint) {
    uint max = 0;
    for(uint i = 0; i < arr.length; ++i) {
      if(arr[i] > max) {
        max = arr[i];
      }
    }
    return max;
  }

  function getMaxU(uint16[] memory arr) public pure returns (uint16) {
    uint256 max;
    for(uint i = 0; i < arr.length; ++i) {
      if(arr[i] > max) {
        max = arr[i];
      }
    }
    return uint16(max);
  }

  function getMin(uint[] memory arr) public pure returns (uint) {
    uint min = Type.MAX_VALUE;
    for(uint i = 0; i < arr.length; ++i) {
      if(arr[i] < min) {
        min = arr[i];
      }
    }
    return min;
  }

  function getMinUnsigned(uint16[] memory arr) public pure returns (uint16) {
    uint256 min;
    for(uint i = 0; i < arr.length; ++i) {
      if(arr[i] < min) {
        min = arr[i];
      }
    }
    return uint16(min);
  }
  /* The below function returns the sum of the elements in a
