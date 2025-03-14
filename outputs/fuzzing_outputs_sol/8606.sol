pragma solidity ^0.8.0;
contract Caller {
    function handleTransfer(address recipient, uint256 amount) external payable {}
    fallback() external payable {


        address payable self = payable(msg.sender);
        self.send(address(this).balance);
    }
}
