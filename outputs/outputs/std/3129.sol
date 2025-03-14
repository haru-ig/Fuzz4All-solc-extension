pragma solidity ^0.8.0;
contract Array {
  uint[] memory _array;
  uint storage _maxArrayLength = 1;
  function getArrayLength()public view returns(uint)
  {
    return _array.length;
  }
  function getEmptyArray(uint length,address from)public
    {
      require(from!= address(0),"Invalid account");
      for(uint i = 0; i<length; i++){
        _array.push((uint(i))+1000);
      }

    }
  function getArray()public view returns(uint[] memory)
  {
      return _array;
  }
  function setArray()public{
    uint length = getArrayLength();
    require(length <= _maxArrayLength,"This array is already set");
    for(uint i = 1; i<=length; i++){
      _array.push(uint(i));
    }
    _maxArrayLength = length+1;

  }
  function arrayEqual(uint[] memory)public pure returns (bool)
  {
    bool equal = true;
    for (uint i = 1; i <= _array.length; i++){
      equal = equal && (_array[i] == (_array[i - 1] + 1000));
    }
    return equal;
  }

}
