pragma solidity ^0.8.0;
contract LowLevelCaller {
  receive() external payable {
    writeBack(msg.data);
  }

  function writeBack(bytes memory data) private {

  }

  function callContract(address contractAddress) public payable {
    writeBack(abi.encodeWithSignature("()"));
    writeBack(abi.encodeWithSignature("()"));
    Contract(contractAddress).call("");
    writeBack(abi.encodeWithSignature("()"));
  }
}
