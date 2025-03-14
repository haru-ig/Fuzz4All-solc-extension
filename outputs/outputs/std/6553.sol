pragma solidity ^0.8.0;

address owner;
contract Ownable {
    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    function transferOwnership(address _newOwner) external onlyOwner returns (bool) {
        owner = _newOwner;
        return true;
    }
}
