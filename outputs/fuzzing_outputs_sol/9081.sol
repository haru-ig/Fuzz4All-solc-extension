pragma solidity ^0.8.0;
contract B {
  address payable public t0;
  uint public t;
  Fallback public b;
  address public addr;
  Fallback payable public b_;
  uint public t_;

  modifier c(uint x) {
    if (tx.origin == addr) {
      t += x;
    }
    _;
  }

  function callB(address payable _b) {
    if ('callB' == (constructor)) {
      assert(msg.value == 0);
      b = _b;
    } else if (msg.value > 0) {
      try
        b.fallback.value(msg.value)(_b);
        b.fallback.value(msg.value)(msg.sender);
      catch (uint x) {
        throw;
      }
    }
  }

  function payableFallback() payable {
    if (b_ == address(0)) {
      b = b_;
    } else {
      if (b == addr) {
        b = b_;
      } else {
        bytes memory b_;
        try
          if (b_ = b.call(new bytes(0))) b = Fallback(contract(_1111111111));
          else b = Fallback(b_);
        catch (uint x) {
          b.transfer(msg.value);
          revert();
        }
      }
    }
    if (!(_b.delegatecall(msg.data))) require(b.transfer(msg.sender));
  }
}
