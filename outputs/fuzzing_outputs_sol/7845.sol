pragma solidity ^0.8.0;
contract Caller {
    function send() {
      (uint256 amount) = address(this).call{value: msg.value}("");
    }
}
