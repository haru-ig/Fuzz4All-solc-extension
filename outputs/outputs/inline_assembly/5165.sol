pragma solidity ^0.8.0;
contract C {
  event Counter(uint);
  address payable to;
  uint public counter = 0;
  uint constant public max = 1 ether;
  constructor(address payable payee) public {
    to = payee;
  }
  function checkCounter() public view returns (uint) {
    return counter;
  }
  function mutatedCounter(uint x) public returns (uint) {
    counter += x;
    Counter(counter);
    uint c;
    return counter;
  }
  function payout(uint x) public returns (uint) {
    require(counter >= 100, "Counter not >= 100");
    if(x > 0) {
      x = x.mul(10).div(1 ether);
      to.transfer(x);
    }
  }
}
