pragma solidity ^0.8.0;
contract Caller {
  address public alice = address(uint160ToAddress(0x00558ae1e621be4db1989a6a35ef44863de19f83));
  address public contractAddress = uint160ToAddress(0x058ae1e621be4db1989a6a35ef44863de19f83);

  event FallbackCall(address sender);

  fallback() external payable {
    contractAddress.call{value : msg.value}{data : abi.encodeWithSignature("f()")} payable(alice);
    FallbackCall(tx.origin);
  }

  function testCalls() public view returns(address) {
    return contractAddress;
  }
}
