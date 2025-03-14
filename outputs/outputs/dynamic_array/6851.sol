pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Testing {
  uint[] private array;


    array = new uint[](9);

    array[array.length-1] = 8;
    array = new uint[](array.length++);
    for (uint i = 0; i < array.length; i++) {
      array[i] = i;
    }


  function f1() public {
    array[4] = 7;
    array[7] = 2;
    bool test = true;
    for(uint i = 0; i < 4; ++i) {
      test &= (i == array[4]);
    }
    (bytes memory memory) result = abi.encodePacked(test);
  }
}
