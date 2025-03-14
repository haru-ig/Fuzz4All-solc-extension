pragma solidity ^0.8.0;
contract Array {
  uint256[] array;
  mapping (uint256 => address) public indexToAddress;

  function set(uint256 x, address y) public {
    uint256 _i = array.push_back(x);
    indexToAddress[_i] = y;
  }

  function get(uint256 i) public view returns(uint256, address) {
    return (array[i], indexToAddress[i]);
  }


  function ascending(uint256[] memory arr) public view returns (uint256[] memory) {
    uint256 len = arr.length;

    for (uint256 i = 0; i < len - 1; i++) {
      for (uint256 j = 0; j < len - 1 - i; j++) {
        if (arr[j] > arr[j + 1])
          swap(arr, j, j + 1);
      }
    }
  }

  # TODO: Sort array of a specific data type in descending order.
  function descending(uint256[] memory arr) public view returns (uint256[] memory) {
    uint256[] memory temp = ascending(arr);
    for (uint256 i = 0; i < len - 1; i++)
      swap(arr, i, temp[i]);
  }

  # TODO: Sort array of a specific data type in alphabetical order.
  function alphabetical(uint256[] memory arr) public view returns (uint256[] memory) {
    uint256 len = arr.length;
    for (uint256 i = 0; i < len; i++)
      for (uint256 j = 0; j < len - 1 - i; j++)
        if (arr[j] > arr[j + 1])
          swap(arr, j, j + 1);
  }

  function getMin() public view returns(uint256) {
    return array[0];
  }

  function getMax() public view returns(uint256) {
    return array[array.length - 1];
  }

  function getSum() public view returns(uint256) {
    uint256 sum = 0;
    uint256 len = array.length;
    for (uint256 i = 0; i < len; i++)
      sum = sum + array[i];
    return sum;
  }

  function arrayToPoint (uint256 arrSize) public pure returns (Point memory) {
    Point memory pnt = Point({
      x: 0x22,
      y: 0xff
    });
    if (arrSize < 2)
      return pnt;

    uint256 pntX = arrSize / 2;
    pnt.x = arr.xAt(pntX);
    pnt.y = arr.yAt(pntX);
