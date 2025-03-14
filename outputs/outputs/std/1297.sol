pragma solidity ^0.8.0;
contract Array {
  mapping (address => uint256) numArray;





















  function getMin(uint256[] memory a, uint256 n) {
    uint256 min = a[0];
    for (uint256 i = 1; i < n; i++){
      if (min > a[i]) {
        min = a[i];
      }
    }
    return min;
  }

  function getMax(uint256[] memory a, uint256 n){
    uint256 max = a[0];
    for (uint256 i = 1; i < n; i++){
      if (max < a[i]) {
        max = a[i];
      }
    }
    return max;
  }

  function getSum(uint256[] memory a, uint256 n) {
    uint256 sum = 0;
    for (uint256 i = 0; i < n; i++){
      sum += a[i];
    }
    return sum;
  }

  function getDifference(uint256[] memory a, uint256 n){
    uint256 difference = a[0];
    for (uint256 i = 1; i < n; i++){
      difference -= a[i];
    }
    return difference;
  }

  function getProduct(uint256[] memory a) {
    uint256 product = 1;
    for (uint256 i = 0; i < a.length; i++){
      product *= a[i];
    }
    return product;
  }
}

pragma solidity ^0.8.0;
contract ArrayLoop {
  address payable[10] private owners;
  uint256 ownerIndices[10];
  uint256 private ownerIndicesNext;
  uint256 maxSize;
  mapping (address => uint256[]) public usersOwned;
  mapping (address => uint256) public addressToIndex;

  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  event AddUser(address indexed owner);

  constructor (uint256 newMaxSize) {
    maxSize = maxSize < 10? 10 : maxSize;
    ownerIndices
