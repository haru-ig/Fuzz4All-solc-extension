pragma solidity ^0.8.0;
contract Mutate
{
  uint f;
  uint[7] array;


  function mutatedAdd(uint x, uint y)
      public pure
      returns (uint)
  {
    uint tempX = x;
    uint tempY = y;
    uint result;
    result = tempX += tempY;
    return result;
  }


  function mutatedSub(uint x, uint y)
      public pure
      returns (uint)
  {
    uint tempX = x;
    uint tempY = y;
    uint result;
    result = tempX -= tempY;
    return result;
  }


  function mutatedMult(uint x, uint y)
      public pure
      returns (uint)
  {
    uint tempX = x;
    uint tempY = y;
    uint result;
    result = tempX *= tempY;
    return result;
  }


  function mutatedDiv(uint x, uint y)
      public pure
      returns (uint)
  {
    uint tempX = x;
    uint tempY = y;
    uint result;
    result = tempX /= tempY;
    return result;
  }

  constructor(uint f_)
      public
  {
    f = f_;
    array = [2,3,4,5,6,7];
  }


  function mutatedAssignX(uint x)
      public pure
      returns (uint)
  {
    uint tempX = x;
    tempX = f % tempX;
    array[3] = x;
    return tempX;
  }

  function mutatedAssignY(uint y)
      public pure
      returns (uint)
  {
    uint tempX = array[3];
    uint tempY = y;
    array[4] = tempX % tempY;
    return tempY;
  }

  function mutatedAssignAdd()
      public pure
      returns (uint)
  {
    uint tempX = array[4];
    uint tempY = array[3];
    uint tempZ = x;
    uint result;
    result = tempX + tempY + tempZ;
    return result;
  }
}
