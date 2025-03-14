pragma solidity ^0.8.0;
contract Mutator is Caller {
  receive() external virtual payable {
    assert(false);
  }
}

pragma solidity ^0.8.0;
contract LowLevel {

  receive() external virtual {
    assert(false);
  }
}
