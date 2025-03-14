pragma solidity ^0.8.0;

contract ContractName {
    address public owner;
    mapping(address => bool) public allowances;
    constructor() {

        owner = msg.sender;
    }

    modifier payableOnly() {
        require(allowances[msg.sender][_msgSender()], "Insufficient allowance");
        _;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function revokeAnyAllowance() external onlyOwner {
        allowances[address(0)][address(0)];
    }

    function onlyOwnerOrMsgSender() public pure returns(bool) {
        return (msg.sender == owner) || (allowances[msg.sender][msg.sender] == true);
    }
}
