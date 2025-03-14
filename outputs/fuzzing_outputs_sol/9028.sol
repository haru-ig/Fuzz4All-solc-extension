pragma solidity ^0.8.0;
contract A {

  function() public {
    emit EtherSent(msg.value);
  }
}
