pragma solidity ^0.8.0;
contract MyContract {
  MyContract MyContract;
  int myInt = 1;
  MyContract() {
    MyContract = new MyContract();
    int myInt;
    MyContract = new MyContract();
  }
  function update() internal {
    myInt += 1;
  }
}
contract MyContractWithFallback {
  fallback() external payable {}
}
contract Caller {
  uint balanceOf = 10;
  constructor() {
  }
  function send(address contractAddr) public {
    balanceOf -= contractAddr.call{value: uint(address(this).balance)}("");
  }
}
