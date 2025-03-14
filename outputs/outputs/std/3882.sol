pragma solidity ^0.8.0;
contract ContractOwner {
    address private _owner;
    event OwnershipTransferred(
        address indexed _previousOwner,
        address indexed _newOwner
    );
    constructor () {
        emit OwnershipTransferred(address(0), msg.sender);
        _owner = msg.sender;
    }
    function emitIfSet(bool expression){
        require(expression, "The function was not called");
    }
    function setOwner(address newOwner) public{
        emitIfSet(msg.sender == address(0));
        emitIfSet(newOwner == address(msg.sender));
        emitIfSet(msg.sender!= newOwner);
        emitIfSet(isContractAddress(newOwner));
        this._owner = newOwner;
    }
    function getOwner() public view returns(address) {
        return _owner;
    }
}
