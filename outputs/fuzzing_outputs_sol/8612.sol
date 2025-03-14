pragma solidity ^0.8.0;
contract MutatedCaller {
    function handleTransfer(address recipient, uint256 amount) external payable {
        address payable self = payable(msg.sender);
        self.send(amount);
    }
    fallback() external payable {
        address payable self = payable(msg.sender);
        self.send(address(this).balance);
    }
}
contract PayableCaller {
    function send(address payable recipient, uint256 amount) public returns (bool) {
        if (recipient!= address(0)) {
            recipient.send{value: amount} {value: address(this).balance}();
            return true;
        }
        return false;
    }
    fallback() public payable {}
}
