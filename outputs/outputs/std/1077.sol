pragma solidity ^0.8.0;
contract Convert {
  function uint2str(uint x) public pure returns(bytes memory) {
		return bytes(uint2str(uint64(x)));
  }
  function uint2str(uint64 x) public pure returns(bytes memory) {
		return bytes(uint(x));
  }
}
