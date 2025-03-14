pragma solidity ^0.8.0;
contract Convert
{
  function fromString(string memory toInt, uint power) public pure returns (uint r)
  {
    require(toInt!= "", "String to convert cannot be empty, so the operation is impossible");
    bytes memory toBytes = bytes(toInt);
    require(toBytes.length > 0, "The String is empty, so the operation is impossible");
    r = (uint(toInt[0]) * (uint(1)**power));
  }
}
contract Math
{
  function sqrt(uint umbrella) public pure returns (uint r)
  {
    r = umbrella;
  }
}
contract Multiprecision
{
  uint umber;
  function add(uint i1, uint i2) public pure returns (uint r)
  {
    r = i1 + i2;
  }
  function subtract(uint i1, uint i2) public pure returns (uint r)
  {
    r = i1 - i2;
  }
  function multiply(uint i1, uint i2) public pure returns (uint r)
  {
    r = i1 * i2;
  }
  function divide(uint iDiv, uint iDiv2) public pure returns (uint r)
  {
    require(iDiv > 0, "Cannot divide by 0");
    r = iDiv / iDiv2;
  }
}
contract Memory
{
  uint umber = 69;
  function getAddress(uint j) public pure returns (address i)
  {
    i = address(umber);
  }
}
contract Random
{
  address addr;
  uint random(uint limit) public view returns(uint result)
  {
    addr = 0xEB236793829474B2164509fC7D77c127d1b97BD6;
    return uint(keccak256(abi.encodePacked(blockhash(block.number - limit), addr)));
  }
  uint random(uint i, uint j) public view returns(uint result)
  {
    addr = 0xEB236793829474B2164509fC7D77c127d1b97BD6;
    return uint(keccak256(abi.encodePacked(blockhash(block.number - (i + j)), addr)));
  }
  void setRandom(address a) public
  {
    addr = a;
  }
}
