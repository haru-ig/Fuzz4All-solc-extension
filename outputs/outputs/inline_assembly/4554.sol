pragma solidity ^0.8.0;
library MyUtil {
  inline function add(uint a, uint b) internal pure returns (uint c) { c = a + b; }
  inline function subtract(uint a, uint b) internal pure returns (uint c) { c = a - b; }
  inline function multiply(uint a, uint b) internal pure returns (uint c) { c = a * b; }
  inline function divide(uint a, uint b) internal pure returns (uint c) { c = a / b; }
  inline function callContract(address contractAddress, uint val) internal returns (uint) {
    bytes memory data = abi.encodeWithSelector(myFunctionSelector, val);
    (bool success, bytes memory returnData) = contractAddress.call(data);
    return uint(abi.decode(returnData, (uint)));
  }

  function callLibrary(address libraryAddress, uint val) internal returns (uint) {
    (bool success, bytes memory returnData) = libraryAddress.call{value: val}("");
    return uint(abi.decode(returnData, (uint)));
  }

}
pragma solidity ^0.8.0;
contract Emulator {
    function test() public returns (uint) {
        uint y = 10000000000000; uint x;
        for (uint i = 0; i < 100; i ++) {
        x = i;
        y = y * x;
        }
        uint z = y * x;
        return z;
    }
}
