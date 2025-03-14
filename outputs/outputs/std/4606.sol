pragma solidity ^0.8.0;
contract Ownable {
    address public owner;
    event OwnershipCreated(address indexed _owner);
    constructor() {
        owner = msg.sender;
        emit OwnershipCreated(owner);
    }
    modifier onlyOwner() {
        require(owner == msg.sender, "only owner can call this function");
        _;
    }
    function destroy() public onlyOwner {
        selfdestruct(owner);
    }
}
