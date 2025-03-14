pragma solidity ^0.8.0;
contract GasFix {
  function check(
      uint x,
      uint y,
      uint z,
      address toAdd,
      address payable gasIn,
      address payable gasOut
  ) public {
  }
}

contract CalldataArray {
    function foo() public pure {
        bool[] memory b = new bool[](10);
        bytes16[] memory  b = new bytes16[](10);
        bytes7[] memory  b = new bytes7[](10);
        bytes32[] memory  b = new bytes32[](10);
        uint x1 = uint[](10);
        uint8 x2 = uint8[](10);
        byte[] memory  b1 = new byte[](10);
        bytes memory memory1 = new bytes[](10);
        bytes memory memory2 = new bytes[](20);
        bytes memory memory3 = new bytes[](512);
        bytes memory memory4 = new bytes[](126);
    }
}
