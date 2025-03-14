pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
pragma experimental ABIEncoderV2;
struct testStruct2 {
  bytes32 firstWord;
}
contract test42 {
  function test() public {
    testStruct2 memory a = testStruct2('');
  }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract test42 {
  function test() public {
    bytes32[] memory a = new bytes32[](3);
    uint8[] memory b = new uint8[](3);
    uint16[] memory c = new uint16[](3);
    uint32[] memory d = new uint32[](3);
    uint64[] memory e = new uint64[](3);
    bytes memory f = new bytes(3);
    bytes32 empty1 = bytes32(0);
    bytes32 empty2 = bytes32(1);
    bytes32 empty3 = bytes32(2);
  }
}
