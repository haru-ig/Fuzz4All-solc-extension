pragma solidity ^0.8.0;
contract StringMultiprecision {
   bytes32 private myBytes;
   uint32 private myUint;
   function multiplyBy100(string memory myString) private pure {

    return bytesToUint(myString);
   }
   function getBytesToUint(string memory str) public pure returns (uint256) {
   uint n = 0;
   for (uint i = 0; i < str.length; i++) {
     bytes1 b = bytes1(str[i]);

     n =  n + uint(b) * (uint(256) ** i);
   }
   return n;
   }
   function getBytes32Bytes32(bytes32 a, bytes32 b) public pure returns (bytes32) {
   return keccak256(abi.encodePacked(a, b));
   }
}
