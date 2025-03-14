pragma solidity ^0.8.0;
contract Contract {
    function receive1(uint amount) external payable;
    receive() external payable {
        require(msg.value == amount, "Failed to receive Ether");
    }
    function receive2(uint balance) external {
        uint256 amount = msg.value + balance;
    }
}
