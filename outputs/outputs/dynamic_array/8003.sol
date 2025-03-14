pragma solidity ^0.8.0;
contract Test47 {
    Test46 public testArray;
  function doTest() public {
    uint[] memory bufferSizes;
    for (uint testIndex = 0; testIndex < 5; testIndex++) {
      testArray.dynamicArray[testIndex] += 5;
      bufferSizes.push(testArray.dynamicArray[testIndex]);
    }
    for (uint testIndex = 0; testIndex < bufferSizes.length; testIndex++) {
        Assert.equal(testArray.dynamicArray[testIndex], bufferSizes[testIndex], "Buggy fix from Test46");
    }
  }
}
