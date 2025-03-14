pragma solidity ^0.8.0;
library Library {
  function example() public pure returns (string memory) {
    return "Test";
  }
}

contract FallbackWithLibrary {

  fallback (address payable _self) public {
    callExternalFunction(_self);
  }

  receive() external payable {

    emit Emitted(Library.example());
  }

  fallback () public {

    callExternalFunction(transaction.origin);
  }

  function callExternalFunction(address payable caller) public view {
    caller.transfer(address(this).balance);
  }

  event Emitted(string example);
}
