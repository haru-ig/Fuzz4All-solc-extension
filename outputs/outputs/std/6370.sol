pragma solidity ^0.8.0;
contract Array {
  string public name;
  uint256 public length;
  uint256 private index;
  mapping(uint256 => uint256[]) public arr;
  event IndexUpdated(uint256 indexed index);
  constructor() {
    name = "Array.sol";
    length = 0;
  }
  function findMin(uint256 _length) public view returns(uint256){
    uint256 min = 0;
    for (uint256 i=0;i<_length;i++){
      uint256 x = arr[i][0];
      if (x<min) min = x;
    }
    return min;
  }
  function findMax(uint256 _length) public view returns(uint256){
    uint256 max = 0;
    for (uint256 i=0;i<_length;i++){
      uint256 x = arr[i][1];
      if (x>max) max = x;
    }
    return max;
  }
  function sum(uint256 _length) public view returns(uint256){
    uint256 sum = 0;
    for (uint256 i=0;i<_length;i++) sum + arr[i][0];
    return sum;
  }
  function getMax(uint256 _index) public view returns(uint256){
    uint256 max = arr[_index][1];
    for (uint256 i=0;i<_index;i++){
      uint256 y = max;
      if (arr[i][1]>y) max = arr[i][1];
    }
    return max;
  }
  function getMaxIndex() public view returns(uint256){
    uint256 max = 0;
    uint256 index = 0;
    for (uint256 i=0;i<length;i++){
      uint256 y = max;
      if (getMax(i) > y) {
        max = getMax(i);
        index = i;
      }
    }
    return index;
  }
  function getMin(uint256 _index) public view returns(uint256){
    uint256 min = arr[_index][0];
    for (uint256 i=0;i<_index;i++){
      uint256 y = min;
      if (arr[i][0]<y) min = arr[i][0];
    }
    return min;
  }
  function getMinIndex() public view returns(uint256){
    uint256 min = 0;
    uint256 index =
