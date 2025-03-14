pragma solidity ^0.8.0;
struct MyStruct {
  uint8 x;
  uint16 y;
}

uint32[] myData;

function myFunc() {
     myData[0] = 20;
     uint16[] memory myOther = new uint16[](3);
     myOther[2] = 10;
     myOther[1] = myData[0];
}

contract MyContract {

    uint16[] public myArray;

    function setStorageElement(uint8 i, uint16 j) public {
        myArray[i] = j;
    }

    function getStorageElement(uint8 i) public view returns (uint16) {
        return myArray[i];
    }
}

contract MutateDynamicData {
  constructor() public {
    MyStruct storageStruct = MyStruct({x: 1, y: 10});

    MyContract storageContract = MyContract();
    storageContract.setStorageElement(0, 15);
    storageContract.setStorageElement(1, storageStruct);
  }

  function check() public view {
    MyContract storageContract = MyContract();
    storageContract.revert(storageContract.getStorageElement(0));
  }
}
