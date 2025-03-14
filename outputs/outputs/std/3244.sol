pragma solidity ^0.8.0;
contract Math{
  function b32(uint i)
    internal
    pure
    returns (uint){
    return uint(uint8(i));
  }

}
