pragma solidity ^0.8.0;
contract CallerExample4 {
  function callerReturnByteArrayByte(uint[] memory values) public pure returns(bytes memory retVal) {
    retVal = bytes(new byte(26))
    for(uint i = 0; i < values.length; i++){
        retVal[i] = values[i];
    }
  }
}
