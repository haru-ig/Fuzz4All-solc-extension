pragma solidity ^0.8.0;
contract Example {
  function example() public payable {
    assembly {
      let size := mload(calldata)
      if iszero(size) { }

    }
  }


  receive() external payable {}


}
