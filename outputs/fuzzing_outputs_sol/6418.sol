pragma solidity ^0.8.0;
contract User {
    bool internal executed;
    mapping(address => bool) internal executedBy;
    address internal executedByAddress;
    event ExecutedTransfer(address caller, uint256 amount);

    function callAnotherContract() public payable {
        if (executedByAddress == msg.sender && executedBy[msg.sender]) {
            executed = true;
            executedByAddress = msg.sender;
        } else {
            executed = false;
            executedByAddress = msg.sender;
            executedBy[msg.sender] = true;
            ExecutedTransfer(msg.sender, msg.value);
        }
    }
}
