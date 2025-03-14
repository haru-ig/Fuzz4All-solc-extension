pragma solidity ^0.8.0;
library Convert_2 {
struct MyDoubleUintArray {
    uint256[] number;
    uint256 length;
}

contract Convert {
  function convertToMyDoubleUint(uint256 _x) public pure returns (MyDoubleUintArray memory) {
    require(_x < 100,"Invalid uint value");
    MyDoubleUintArray memory result = MyDoubleUintArray(new uint256[](1),1);
    result.number[0] = _x;
    return result;
  }
  function convertToUint(MyDoubleUintArray memory _array) public pure returns (uint256) {
    MyDoubleUintArray storage myArray = _array;



    for (uint256 i=0; i < myArray.length; i++) {
      uint256 x = myArray.number[i];
    }
    return x;
  }
}
}
