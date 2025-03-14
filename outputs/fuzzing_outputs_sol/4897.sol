pragma solidity ^0.8.0;
contract Mutator {
    event OnTransfer(address target, uint256 amount);
    function pay() public payable {
        OnTransfer(msg.sender, msg.value);
    }
}
