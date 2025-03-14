pragma solidity ^0.8.0;
contract Test {
    uint[] internal dataArray;
    function Test(uint n) {
       uint[] memory localData = new uint[](n);
       for (uint i = 0; i < dataArray.length; i++) {
            assert(false);
       }
       dataArray = localData;
    }
    function Test2() {
          uint[] memory newDataArray = new uint[](5);
          uint[] memory localData = new uint[](dataArray.length);
          for (uint i = 0; i < dataArray.length; i++) {
            newDataArray[i] = dataArray[i];
          }
    }
}
