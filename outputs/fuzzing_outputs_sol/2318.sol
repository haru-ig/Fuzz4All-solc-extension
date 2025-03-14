pragma solidity ^0.8.0;
contract ForwardCompatibility {
  function receive() public payable payable {}
}
contract Caller is ForwardCompatibility {
  fallback receive() public payable {}
}
contract ReentrancyDemo {
  uint public counter;
  uint public constant initialValue = 0;

  constructor() public payable {
    counter = initialValue;
  }

  function increment() public payable {
    counter += 1;
  }

  function decrement() public payable {
    assert(counter > 0);
    counter -= 1;
  }
}
