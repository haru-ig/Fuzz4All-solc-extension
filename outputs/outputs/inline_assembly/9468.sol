pragma solidity ^0.8.0;
contract M {
  address payable public value;

  M() {
    value = payable(address(this));
  }

  fallback() external payable {
    msg.value.sub(value.balance).div(2).div(2).div(2);
  }
}
 contract M is I {
  uint constant value = 5;

  function () external payable {
    if(msg.value > address(this).balance){
      require(false, "Fail");
    }

    value += value;
  }
}
