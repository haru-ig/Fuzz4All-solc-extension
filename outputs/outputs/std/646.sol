pragma solidity ^0.8.0;
contract FunctionContractWithAddress
{
  address payable from;
  function getAddr() constant returns (address payable) {
    return from;
  }
  function getable() returns (Addressable) {
    return theAddrable;
  }
  function getOwner() returns (address payable _owner) {
    return from;
  }
  function setAddr(address payable newAddr) {
    from = newAddr;
  }
}
pragma solidity ^0.8.0;
contract ArrayContract
{
  uint[2][3] array;
  function set(uint[2] arr, uint i, uint j, uint value) public {
    array[i][j] = value;
  }
  function get(uint[2] arr, uint i, uint j) public view returns (uint) {
    return array[i][j];
  }
}

pragma solidity ^0.8.0;
contract FunctionsContractWith10Parameters
{
  function add(uint x, uint y, uint z) returns;
  function sub(uint a, uint b, uint c) returns (uint d) {
    d = a - b + c;
    return;
  }
  function mul(uint a, uint b, uint c, uint d) returns (uint) {
    return a * (b * c + d);
  }
  function div(uint a, uint b, uint c, uint d) returns (uint) {
    return a / (b * c + 1 - d + 5);
  }
  function mod(uint a, uint b, uint c, uint d) returns (uint) {
    return a % (b * c + 5);
  }
  function modmul(uint a, uint b, uint c, uint d) returns (uint) {
    return (a * b) % d;
  }
}
pragma solidity ^0.8.0;
contract MemoryContractWith10Parameters
{

  function getAddr(uint x) public returns (address payable) {
    return address(uint32(uint32(uint32(x)) * uint32(2 ** 256) * uint32(2 ** 256)));
  }
}
pragma solidity ^0.8.0;
contract MultiprecisionContractWith10Parameters
{

  function doMath(uint a, uint b, uint c, uint) private pure returns (uint) {
    return a + b * c;
  }
}
pragma solidity ^0.8.0;
contract RandomContract
{

  function random(uint n) internal returns (uint) {
    uint rand = uint(keccak256(abi.encodePacked(blockhash(block.number), keccak256(abi.encodePacked(now)))))) % n + 1;
    return rand;
  }
}
