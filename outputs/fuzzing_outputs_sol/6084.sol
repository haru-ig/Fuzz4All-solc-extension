pragma solidity ^0.8.0;
interface InterfaceWithFallbackFunction {
    function myFallbackFunction() external payable;
}
contract Caller {
    function doSomething() public {
      (bool sent, bytes memory data) = address(this).call{value: msg.value}("");
      assert(sent);
   }

    function doFallback() public {
      (bool sent, bool success) = address(this).call("");
      assert(sent);
      assert(success);
    }

    function callToStorageWithFallback() public {
      bytes memory data = "Hello".bytes();
      bytes memory originalData = msg.data;
      (bool sent, bytes memory data) = address(this).call.value(msg.value)("");
      assert(sent);
      assert(bytes(data).equals(originalData));
    }
}
