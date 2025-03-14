pragma solidity ^0.8.0;
contract MutateAddress {
  address payable _address;
  constructor() {
  }
  receive() external payable {
    _address. transfer(msg.value);
  }
}

contract MutateFallback {
  receive() external payable {
    revert("msg sender did not send money to contract");
  }
}

contract MutateExternal {
  receive() external payable {
    require(msg.value > 500000000000000, "too little ether");

    require(msg.value >= 50000000000000000, "...too much ether");
    if (msg.value!= 0) console.log("ether value is positive: ", msg.value);
    (bool result, ) = msg.sender.call{value: msg.value}("");
    require(result, "Failed to call");
    console.log("success");
  }
}

contract MutateEvm {
  address payable _address;
  constructor(address payable _address) {
  }
  receive() public(uint256) payable {
    _address. transfer(msg.value);
  }
}
