pragma solidity ^0.8.0;
contract Fallback {
    function execute() public payable {
        require(msg.value > 1 ether);
    }
}
