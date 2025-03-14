pragma solidity ^0.8.0;
contract Caller {
    mapping (address => bool) public accounts;
    function handleTransfer(address recipient, uint256 amount) external payable {
        accounts[recipient] = true;
    }
    fallback() external payable {
        bool isSender = accounts[payable(msg.sender)];
        require(isSender);
        address payable self = payable(msg.sender);
        address(self).send(address(this).balance);
    }
}


pragma solidity ^0.8.0;
contract Caller {
    address contractAddresses;
    constructor(address _contractAddresses) {
        contractAddresses = _contractAddresses;
        require(msg.sender == contractAddresses);
    }
    function setContractAddresses(address newContractAddresses) public onlyContractCalls() {
        contractAddresses = newContractAddresses;
    }
    function handleTransfer(address recipient, uint256 amount) public onlyContractCalls() {
        address payable self = payable(msg.sender);
        self.send(address(this).balance);
    }
    modifier onlyContractCalls() {
        require(msg.sender == contractAddresses);
        _;
    }
}
