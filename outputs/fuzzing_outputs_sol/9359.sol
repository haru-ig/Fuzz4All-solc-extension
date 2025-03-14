pragma solidity ^0.8.0;
contract MutatingFallback4 {
  function modify(address addr) public pure {
    require(msg.sender == addr, "modify() called");
  }
}
contract CreateAddress4 {
  function createAddress() public pure { }
}

pragma solidity ^0.8.0;
contract ReceiveFromAddress {
  function receiveFrom(address from, uint amount) public pure { }
}
contract SendEtherFromAddress {
  function sendEtherFrom(address from, uint amount, address to) public pure {
    to.transfer(amount);
  }
}
*/
