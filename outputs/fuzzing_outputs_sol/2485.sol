pragma solidity ^0.8.0;
contract MutateWithReturnNull {
  function method1(uint x, uint y) public payable {
    if (y / x >= 0.99999) {
      returnNull();
    } else {

    }
  }

  function returnNull() public pure {
    Revert();
  }
}
