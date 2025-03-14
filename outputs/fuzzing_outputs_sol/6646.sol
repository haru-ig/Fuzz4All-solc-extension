pragma solidity ^0.8.0;
contract Caller {
    function receive() payable public {
      if (msg.value == 0){
        selfdestruct(address(0));
      }
    }
}
