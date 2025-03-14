pragma solidity ^0.8.0;
contract Randomness_equivalent {
   function randomUInt() public pure returns (uint) {
      return uint(keccak256(abi.encodePacked(blockhash(0), now)));
   }
   function randomUIntWithoutSeeding() public pure returns (uint) {
      return uint(keccak256(abi.encodePacked(now, now*2, now*3, now*4, now*5)));
   }
   function randomArrayUInt(uint length) public pure returns(uint[] memory) {
      return new uint[](length);
   }
}
