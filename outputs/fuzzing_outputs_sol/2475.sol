pragma solidity ^0.8.0;
contract PayableCaller {
  bool public fallbackCalled;
  uint256 constant max = 10000000000000000000;

  modifier payableWithoutFallback(uint x, uint y) { fallbackCalled = false; _; fallbackCalled = true; }

  function pay(uint x, uint y) public payableWithoutFallback(x,y) {
      return (x * y);
  }

  function pay2() payable {
    fallbackCalled = false;
    _;
    fallbackCalled = true;
  }



  function getValue() public view returns (uint x) { x = 0x20fe20fe; }
}
contract NotPayableCaller {
  bool public fallbackCalled;
  uint256 constant max = 1000000000000000000;

  modifier payableWithoutFallback(uint x, uint y) { fallbackCalled = false; _; fallbackCalled = true; }

  function pay(uint x, uint y) public payableWithoutFallback(x,y) {
      return (x * y);
  }
}
contract C {
  ContractCall contractCall;

  function pay(uint x) public {
      contractCall.pay(x, 2000);
      require(false);
      uint256 res = contractCall.get();
  }

  function get() public view {
      uint256 res = contractCall.get();
      require(res == 300010);
      uint x = 0x20fe20fe;
  }
}
