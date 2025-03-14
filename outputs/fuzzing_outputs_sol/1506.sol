pragma solidity ^0.8.0;
contract SemanticMutationExample {
  interface IFallbackReceiver {
    function fallback() external payable;
  }
  function sendEther(IFallbackReceiver receiver) public payable {
    receiver.fallback.call.value(msg.value)("");
  }
  function doSomething() public {
    IFallbackReceiver receiver = IFallbackReceiver(msg.sender);
    receiver.fallback.call.value(msg.value)("abc");
    receiver.fallback();
    try {
      fallback.sendValue.value(msg.value)();
    } catch {
      fallback();
    }
  }
}
contract SimpleFallbackExample is SemanticMutationExample {
  function fallback() public payable {}
}
contract CallerExample {
  address payable fallbackReceiver;
  function fallback() public payable {
    fallbackReceiver.transfer(address(this).balance);
  }
}
