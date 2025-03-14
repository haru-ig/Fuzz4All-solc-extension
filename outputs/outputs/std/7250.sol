pragma solidity ^0.8.0;
contract Mutate {
  function test(uint x, uint y) public pure returns (uint){
     return 1 + x + y;
  }
}

pragma solidity ^0.8.0;
contract Array {
  uint[] array1;
  uint[] array2;
  uint[] array3;

  constructor() public {
    array1 = new uint[](1);
    array1[0] = 2;
    array2 = new uint[](4);
    array2[0] = 10;
    array2[1] = 1;
    array2[2] = 2;
    array2[3] = 3;
    array3 = new uint[](9);
    array3[0] = 2;
    array3[1] = 10;
    array3[2] = 1;
    array3[3] = 2;
    array3[4] = 3;
    array3[5] = 4;
    array3[6] = 5;
    array3[7] = 6;
    array3[8] = 7;
  }

  function min(uint a, uint b) public view returns (uint){
    if(a < b) {
      return a;
    } else {
      return b;
    }
  }

  function max(uint a, uint b) public view returns (uint) {
    if(a > b) {
      return a;
    } else {
      return b;
    }
  }

  function sum(uint[] storagea) public view returns (uint){
    uint sumtotal = 0;
    uint lenstorage = storagea.length;
    for(lenstorage-1; lenstorage; lenstorage--){
      sumtotal += storagea[lenstorage];
    }
    return sumtotal;
  }

  function returnarray() public view returns (uint[] memory) {
    return array3;
  }

  function returnsubarray() public view returns (uint[]) {
    return array2;
  }

  function sortarray() public view returns (uint[]) {
    uint[] memory a = array3;
    uint lenstorage = a.length;
    for(uint i = 0; i < lenstorage; i++){
      uint j = i;
      while(a[j] < a[j-1]){
        uint temp = a[j];
        a[j] = a[j-1];
        a[j-1] = temp;
        j = j-1;
      }
    }
    return a;
  }
}
