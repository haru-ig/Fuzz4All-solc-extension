pragma solidity ^0.8.0;
contract Caller {

    function call() public pure returns(uint) {
      return uint(address(Receiver(0)).toggle());
    }
}
