pragma solidity ^0.8.0;
contract Ownable {
    address public owner;
    event OwnershipTransferred(address indexed _previousOwner, address indexed _newOwner);
    constructor () public { owner = msg.sender; }
    modifier onlyOwner() {
        require(owner == msg.sender, 'Error: caller is not the owner');
        _;
    }
    function transferOwnership(address _newOwner) public onlyOwner {
        require(_newOwner!= address(0), 'Error: New Owner is zero address');
        require(_newOwner!= owner, 'Error: new owner can be the sender');
        emit OwnerershipTransferred(owner, _newOwner);
        owner = _newOwner;
    }
}
