pragma solidity ^0.8.0;
contract Modification {
    uint256[] internal myUintArray;

    constructor (uint256[] memory _myUintArray) {
      myUintArray = _myUintArray;
      modify();
    }

    function modify() public {
        memory myuint;
        uint256[] memory myUintArray;
        uint256 a;
        a = 4;
        for (; a < 17; a += 1) {
          myUintArray[a] = a*2;
          a *= 3;
        }
        uint256[] memory retUintArray = [10,20,30,40,50];
    }

}
