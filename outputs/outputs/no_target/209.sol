pragma solidity ^0.8.0;
import "../utils/IFactory.sol";
import ".";
contract Owned{
    address _owner;
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    constructor(){
        address owner = msg.sender;
        _owner = owner;
        emit OwnershipTransferred(address(0), owner);
    }
    modifier onlyOwner(){
        require(msg.sender == _owner);
        _;
    }
    function owner() public view returns (address _owner){ return _owner; }
    function transferOwnership(address newOwner) public onlyOwner {
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}
