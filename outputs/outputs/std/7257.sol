pragma solidity ^0.8.0;
contract Mutation
{
  constructor(string memory newString)
  {
    myString = newString;
  }

  function mutate() public
  {
    myString = myString + "modified";
  }

  function getBytes() public view returns (bytes)
  {
    return bytes(myString);
  }

  function getString() public view returns (string memory)
  {
    return myString;
  }

  function setBytes(bytes calldata newBytes) public
  {
    myBytes = newBytes;
  }

  function getUint() public view returns (uint)
  {
    return myUint;
  }

  function setUint(uint newUint) public
  {
    myUint = newUint;
  }
}
