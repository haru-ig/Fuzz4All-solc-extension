pragma solidity ^0.8.0;
contract Caller{
    function call() public {
      address(0).call{}("");
    }
}
