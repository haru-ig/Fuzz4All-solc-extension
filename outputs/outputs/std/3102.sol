pragma solidity ^0.8.0;
contract Memory {
  function memoryAccess() public pure {

    uint constant myNumber = 10;

    uint[] memory myNumbers = new uint[](3);
    myNumbers[0] = 1000;
    myNumbers[1] = 2000;
    myNumbers[2] = 3000;

    uint memory myOtherValue = myNumbers[0] + myNumbers[1];
    uint[] memory myArray = new uint[](myNumbers.length);





    myArray[0] = 4000;
    myArray[1] = 5000;
    myArray[2] = 6000;

    uint storedMyNumber = myNumbers[0];
    myNumbers[0] = 3000;

  }
}
