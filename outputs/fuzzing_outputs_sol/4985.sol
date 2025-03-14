pragma solidity ^0.8.0;
contract FailReceiver {
    function receive() public payable {
        revert("This should never happen.");
    }
}
