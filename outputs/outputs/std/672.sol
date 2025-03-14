pragma solidity ^0.8.0;
contract MutatedSemNotEqual
{
  bytes32 bytesArr;
  uint random = uint(keccak256(block.timestamp));

  function mutate1() public returns (bytes32)
  {
    bytesArr = keccak256("\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe\x1fe");
    bytes32 mutated = bytes32(keccak256("\x1fe\x1fe"));
    return bytesArr;
  }

  function mutate2() public returns (uint256)
  {
    bytes32 mutated = rand(uint(random),bytesArr.length);
    uint256 result = uint(keccak256(abi.encodePacked(mutated)));
    return result;
  }
  inline function rand(uint x, uint y) pure internal returns (uint)
  {
      return x % y + y
