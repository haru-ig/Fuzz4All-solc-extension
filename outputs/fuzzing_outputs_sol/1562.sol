pragma solidity ^0.8.0;
contract Receiver {
  function receive() external payable {}
}
contract Fallback {
    receive() external payable {
        assert(false);

    }
}
