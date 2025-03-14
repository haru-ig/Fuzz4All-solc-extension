pragma solidity ^0.8.0;


contract EtherReceiver {
    function handleTransfer(address recipient, uint256 amount) external payable {}
    receive() external payable { }
}
