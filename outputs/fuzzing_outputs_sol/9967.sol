pragma solidity ^0.8.0;
contract Fallback {
      function toggle() public {

            msg.sendValue(msg.value);
      }
}
