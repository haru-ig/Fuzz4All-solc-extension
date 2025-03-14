pragma solidity ^0.8.0;
contract CallSender {
    address private contractAddr;

    function sendEther() public returns (bool) {
        contractAddr.call{value: msg.value}("");
        return true;
    }

    modifier checkSender() {
        require(msg.sender == address(this), "Function should fail");
        _;
    }

    function setNewContractAddress(address contractAddress) public checkSender returns (bool) {
        contractAddr = contractAddress;
        return true;
    }
}
