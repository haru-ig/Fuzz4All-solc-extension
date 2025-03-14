pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract ExampleClass {
    uint[2][4] arrayTest;

    constructor(uint[4][4] memory inputArr) {
        for (uint x=0; x<4; x++) {
          for (uint y=0; y<4; y++) {
            arrayTest[x][y].push(inputArr[x][y]);
          }
        }
    }

    function get2DArrAt(uint y, uint x) public view returns (uint[4] memory) {
      uint[4] memory outputArr;
      outputArr = arrayTest[x][y];
      return outputArr;
    }
    function get3DArrAt(uint y, uint x) public view returns (uint[4][4] memory) {
      uint[4][4] memory outputArr;
      outputArr = arrayTest[x][y];
      return outputArr;
    }
    function getArray() public view returns (uint[4][4][4] memory) {
        uint[4][4][4] memory outputArr;
        for (uint y=0; y<4; y++) {
            for (uint x=0; x<4; x++) {
                for (uint z=0; z<4; z++) {
                    outputArr[y][x][z] = arrayTest[x][y][z];
                }
            }
        }
        return outputArr;
    }
}
