pragma solidity ^0.8.0;
contract Fallback {
  function fallback() public payable {}
  function receive() public payable {}
  receive() public {}
}
contract MyMutantCaller {
  address payable owner;
  function myRecover() public { if (msg.value < 3) owner.send(msg.value); }
}
contract MyFallback {
  function myReceive() public { if (msg.value < 3) msg.sender.send(msg.value); }
}
contract FallbackExample {
  uint256 public totalEther;
  function fallback() public payable { totalEther += msg.value; }
  receive() public payable { totalEther += msg.value; }
}
contract TransferToFallback {
  contract FallbackExample2 is FallbackExample {
    function fallback() public { super.fallback(); }
  }
}
