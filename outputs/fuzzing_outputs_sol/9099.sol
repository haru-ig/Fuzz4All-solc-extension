pragma solidity ^0.8.0;
contract SecondFallback {
  function badCall(address target, uint i, bytes32[6] memory b) public returns(bytes memory) {
    bytes memory x;
    bytes memory b1 = new bytes(1);
    byte[] b2 = new byte[](1);
    bool[4] memory b3 = new bool[](1);
    uint b4 = 1;
    address[7] memory b5 = new address[](1);
    uint b6 = 1;
    bytes(1)[1] memory b7 = new bytes(1)[1];
    bytes32[6] memory b8 = new bytes32[](1);
    address b9;
    bytes memory b10;
    return x;
  }
}

pragma solidity ^0.8.0;
contract Caller {
  function safeCall(address target, uint i, bytes32[6] memory) public returns (bool){
    target.call{value: msg.value}("");
    return false;
  }
}
