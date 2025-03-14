pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample85 {
    bytes32 public constant MY_BYTES32_CONSTANT = bytes32(0x00);
    bytes2 public myBytesByte0;
    bytes4 public myBytesFour;
    address public myAddress;
    bytes8 public myBytesEight;
    bytes newStringBytes;
    event MyEvent(
        bytes[] paramA,
        bytes4[] paramB,
        address paramC,
        bytes8[] paramD,
        bytes4[] paramE,
        bytes32[4] paramF,
        bytes paramG,
        address paramH,
        bytes32[] paramI
    );
    function getMyBytesByte0() public view returns (bytes2) {
        return myBytesByte0;
    }
    function getStringAsString() public view returns (string memory) {
        return string(new bytes(2));
    }


   function getParamBytesEight(bytes4[] memory paramE) public view returns(bytes8) {
      return bytes8(18180759663505000810674);
   }
}
