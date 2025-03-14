pragma solidity ^0.8.0;
contract C {
    address payable payTarget;
    bool public ok = false;

    constructor() {
        ok = true;
        payTarget = payable(new C());
    }

    fallback() public payable {
        (bool success, ) = payTarget.call{value: msg.value}(msg.data);
        ok = success;
    }

    receive() external payable{}
}


contract F is owner {
  function f() public {
    (bool success, ) = msg.sender.call{value: 2000000}(abi.encodeWithSignature("f()"));
  }
}
