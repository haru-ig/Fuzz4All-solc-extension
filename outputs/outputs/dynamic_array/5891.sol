pragma solidity ^0.8.0;
contract Test1865W {
    function set(uint16[1] memory x) public {
        x[0] = 4;
    }
    function get() public view returns (uint16) {
        return x[0];
    }
}






pragma experimental ABIEncoderV2;
contract Test1876 {
  function test() public pure {
    uint16[] memory array_of_uint256 = [1,2,3];
    uint256[] memory array_of_uint256_array = [
      uint256(1), uint256(2), uint256(3)
    ];
    uint256[] memory array_of_uint256_variable = uint256[](array_of_uint256_array);
    assembly {
      let address x := mload(0x40)
      mstore(x, 4)
    }
    uint256[] memory array_of_uint2562 = new uint256[](3);
    assembly {
      let address x := mload(0x40)
      mstore(x, 0x3b606060604052346000357c010000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000
