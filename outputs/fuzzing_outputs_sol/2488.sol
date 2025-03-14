pragma solidity ^0.8.0;
contract MutateNull {
  function pay(uint x, uint y) public payable returns (uint) {
    return (y * x) / 2 + x;
  }
}
contract CallerPayable {
  function payableFallback(uint a) public payable {
    return a * 2;
  }
}
contract CallerNonPayable {
  function not_payableFallback() public {
      return true;
  }
  function payableFallback(uint a) public {
    return a * 2;
  }
}
contract Caller {
  function pay(uint a) public payable {
    return a * 2;
  }
  function nonpayable(uint a) public payable returns (uint) {
    return a + 1;
  }
  function nonpayable_return(uint a) public payable returns (uint) {
    return 212 + a;
  }
}
