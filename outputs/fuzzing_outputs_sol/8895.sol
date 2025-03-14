pragma solidity ^0.8.0;
contract Caller {
   event Fallback(address);
   function() external payable {
      emit Fallback(msg.sender);
   }
}
contract Contract {
    function noPayableFallback() public payable {
       throw;
    }
    function payableFallback(address x) public payable {
       throw;
    }
    function receive() {
        throw;
    }
}

contract Example5 {
   function someFunc(bool noPayableFallback, bool payableFallback, bool noEthereumFallback) {
      Contract c = new Caller();
      if (c.test(noPayableFallback, noEthereumFallback)) {
         c.noPayableFallback();
      } else {
         c.noPayableFallback();
      }
      if (c.test(payableFallback, noEthereumFallback)) {
         call(c, payableFallback, noEthereumFallback);
      } else {
         c.payableFallback(msg.sender);
      }
      if (c.test(noPayableFallback, payableFallback)) {
         call(c, noPayableFallback, payableFallback);
      } else {
         c.payableFallback(msg.sender);
      }
      if (c.test(payableFallback, payableFallback)) {
         call(c, payableFallback, payableFallback);
      } else {
         c.payableFallback(msg.sender);
      }
      if (c.test(noPayableFallback, payableFallback)) {
         call(c, noPayableFallback, payableFallback);
      } else {
         c.payableFallback(msg.sender);
      }
   }
}
contract FallbackWithException {
   function someFunc(bool noPayableFallback, bool payableFallback, bool noEthereumFallback) public {
      Contract c = new Caller();
      try {
         c.noPayableFallback();
      } catch () {
         return;
      }
      try {
         call(c, payableFallback, noEthereumFallback);
      } catch (Exception e) {
         return;
      }
      try {
         c.payableFallback(msg.sender);
      } catch (Exception e) {
         return;
      }
      try {
         call(c, noPayableFallback, payableFallback);
      } catch (e) {
         return;
      }
      try {
         c.payableFallback(msg.sender);
      } catch (Exception e) {
         return;
      }
      try {
         call(c, payableFallback, payableFallback);
      } catch (Exception e) {
         return;
      }
      try {
         c.payableFallback(msg.sender);
      } catch (Exception e) {
         return;
      }
      try {
         c.noPayableFallback();
      } catch (Exception e) {
         return;
      }
   }
}
