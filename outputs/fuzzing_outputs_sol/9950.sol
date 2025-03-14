pragma solidity ^0.8.0;
fallback() external payable {
  revert();
}
contract Caller {
    function send(uint value) external payable {
        (bool success, bytes memory result) = msg.sender.call{value: value}(abi.encode("data"));
        require(success, "reverted");
    }
}
