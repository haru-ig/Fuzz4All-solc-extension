pragma solidity ^0.8.0;
contract Caller
{
   function callAndFallback(uint x) public {
      Equivalent(msg.sender).sendEther(x);


   }

   function makeCallWithFallback(uint x) public {
      Equivalent(msg.sender).sendEther(x);
      Equivalent(msg.sender).fallback(x);
   }

   function callWithFallbackAndReceiveEther() public receive (uint x) {
      if(x > 0) {
      }
   }
}

pragma solidity ^0.8.0;
contract CallerWithEther
{
   uint constant MAX = 134217728;
   uint public lastTime;

   function call() public payable {
      uint t = block.timestamp;
      if(t - lastTime >= MAX) {
         lastTime = t;

         uint x = 100;
         sendMoney(msg.sender, x);
      }
      lastTime   = t;


   }

  function transferAmountTo(address to, uint value, string memory prefix, address sendTo, string memory reason) public {
      bytes memory returnData = abi.encode(to, msg.sender, value, prefix, sendTo, reason);
      sendMoney(to, value, reason);




  }

  function sendMoney(address payable recipient, uint amount) private {
      recipient.transfer(amount);
  }
}
