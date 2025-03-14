pragma solidity ^0.8.0;
contract ContractWithFallback9 {
  uint value;
  function modify() public {
    value = value / 2;
  }
  function call() public {
    value++;
    modifier m() {
      value--;
    }
    m;
  }
  function call2() public {
    value--;
    modifier m() {
      value++;
    }
    m;
  }
}
