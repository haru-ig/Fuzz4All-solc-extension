pragma solidity ^0.8.0;
contract previousC {
  function revert(uint8 a) public {
    unchecked {
        do(a);
    }
  }

  function do(uint8 a) public {
      require(a < 2);


   }
}
