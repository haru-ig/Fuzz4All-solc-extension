pragma solidity ^0.8.0;
contract MutatorExample {
  function fallback() external pure {
    require(msg.value > 0);
    revert();
  }
}

pragma solidity ^0.8.0;
contract FallbackExample {
  function receive() external pure {
    string memory _data = msg.data;
    require(block.timestamp + 3200) > block.timestamp);
    emit LogTransaction(msg.sender, _data, true);
    revert();
  }

  function fallback() public pure { emit LogTransaction(msg.sender, "", false); }
}
