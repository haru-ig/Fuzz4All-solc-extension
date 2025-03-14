pragma solidity ^0.8.0;
contract Caller {
    function callMe() public payable {

      (bool success, bytes memory data) = address(this).call{value: msg.value}("");
      require(success);


      (success, data) = address(this).call{value: msg.value}("");
      require(success);


      (success, data) = address(this).call(abi.encodeWithSignature("receive()"));
      require(success);








      emit EthTransfer(msg.sender, msg.value);
    }
}
