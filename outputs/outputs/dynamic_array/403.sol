pragma solidity ^0.8.0;
contract test3
{
     uint8[3]  public myArray;
}
address from = msg.sender;

pragma solidity >=0.4.23 <0.9.0;
contract Ownable {
    address private _owner;

    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );

    constructor() {
        _transferOwnership(msg.sender);
    }

    modifier onlyOwner() {
        require(msg.sender == _owner);
        _;
    }

    function transferOwnership(address newOwner) internal onlyOwner {
        _transferOwnership(newOwner);
    }
    function _transferOwnership(address newOwner) internal {
        require(newOwner!= address(0));
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}
