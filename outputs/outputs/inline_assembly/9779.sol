pragma solidity ^0.8.0;
contract MutatedYulContract12{
    uint internal contractCounter;
    uint constant c = 0x00;
    function a() public {
    if (contractCounter > 0) {
    contractCounter--;
  } else {
    if (contractCounter == 0) {
      contractCounter = 142;
    } else {
      contractCounter = contractCounter * 3;
    }
  }
    return ;
    }
}


pragma solidity ^0.8.0;
contract MutatedYulContract13{
    uint internal contractCounter;
    uint constant c = 0x00;
    function a() public {
    uint number = 0;
    uint x = 0;
    switch (number) {
      case 0:
        number = 1;
        x = 0;
        break;
      case 1:
        number = 2;
        x = 0;
        break;
      default:
        number = 0;
        x = 0;
        break;
    }
    }
}
contract MutatedYulContract14{
    uint internal contractCounter;
    uint constant c = 0x00;
    function a() internal {
    uint number = 0;
    uint x = 0;
    switch (number) {
      case 0:
        number = 1;
        x = 0;
        break;
      case 1:
        number = 2;
        x = 0;
        break;
      default:
        number = 0;
        x = 0;
        break;
    }
    }
}
contract MutatedYulContract15{
    uint private contractCounter;
    uint constant c = 0x00;
    function a() public {
    if (contractCounter > 0) {
    contractCounter--;
  } else {
    if (contractCounter ==
