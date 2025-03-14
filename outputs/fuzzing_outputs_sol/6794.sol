pragma solidity ^0.8.0;
contract Ghost {
    function doNotFallback() public payable returns (bool) {}
}
contract Fallback {
    Ghost g;
    function fallback() public payable {
        g.doNotFallback();
    }
}

contract Caller {
    Ghost g;
    function callme() public payable {
        g.doNotFallback();
    }
}

contract Receive {
    address payable receiver;
    constructor(address payable r) {
      receiver = r;
    }
    receive() external payable {}
}
```

The contract `Ghost` has a fallback function. The contract `Failure` executes `Fallback::fallback()`. `caller.callme();` will fail.
The contract `Caller` sends Ether to `receiver` and `g.doNotFallback();` writes to `storage`. `recipient.receive(amount);` will fail.
