pragma solidity ^0.8.0;
contract Array
{
  function indexOf(uint[16] memory array, uint itemToFind) public view returns(uint)
  {
      return indexOf(array, itemToFind, 0);
  }
  function indexOf(uint[16] memory array, uint itemToFind, uint startIndex) public view returns(uint)
  {


    for (uint i=startIndex; i < array.length; i++) {
        if (array[i] == itemToFind) return i;
    }
  }
  function setElement(uint[16] memory array, uint index, uint newValue) public
  {
    require(index <= 16);
    array[index] = newValue;
  }
  function getElement(uint[16] memory array, uint index) public view returns(uint)
  {
    return array[index];
  }
}






contract CheckOverflow {
  function verifyIndexInRange(uint[10] memory array, uint index) public view returns(bool) {
    return (index >= 0 && index < 10);
  }
  function verifyIndexOutOfRange(uint[10] memory array, uint index) public view returns(bool) {
    return (index >= 10 && index < 11);
  }
}
