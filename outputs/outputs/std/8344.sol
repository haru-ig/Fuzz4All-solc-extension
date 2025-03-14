pragma solidity ^0.8.0;
contract ArrayMutationsBis3 {
    uint256[] public arrayOfIntegers;
    uint256[] public array;
    uint256 currentLength;
    bool isMutated;
    function addNewElement() public onlyIfArrayIsEmpty public returns (bool) {
        array.push(currentLength);
        currentLength++;
        array.push(currentLength);
        currentLength++;
        isMutated = true;
        return true;
  }

contract ArrayMutationsBis4 {
    uint256[] public arrayOfIntegers;
    uint256[] public array;
    uint256 currentLength;
    bool isMutated;
    function addNewElement() public onlyIfArrayIsEmpty public returns (bool) {
        array[currentLength] = currentLength;
        currentLength++;
        array[currentLength] = currentLength;
        currentLength++;
        isMutated = true;
        return true;
  }
  function removeLastElement() public onlyIfArrayIsEmpty public returns (uint256) {
    isMutated = true;
    array[arrayIndex];
    currentLength--;
    uint256 element = currentLength;
    array[currentLength] = 0;
    return element;
  }
  uint256 public arrayIndex;
  function removeLastElementByIndex() public returns (bool) {
    isMutated = true;
    if (!arrayIndex > 0 ||!arrayIndex < currentLength) {
      array[arrayIndex];
      array[currentLength];
      return;
    }
    currentLength--;
    uint256  element = currentLength;
    array[element] = 0;
    arrayIndex--;
    return true;
  }
  function returnLastElement() public {
    require(arrayIndex > 0 &&!arrayIndex < currentLength);
    currentLength--;
    array[arrayIndex];
  }
  function getArraySize() public {

    array[arrayIndex];
  }
}
