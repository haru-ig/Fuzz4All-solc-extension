pragma solidity ^0.8.0;
contract Mutator
{
address public receiver;


constructor(in address _receiver) {
    receiver = _receiver;
    emit NewReceiverAddress(_, _receiver, _receiver);
}

function setReceiverFunction(function() external payable {   }) external { }

function setReceiverAddress(address _receiver) public returns (bool)
{
    emit NewReceiverAddress(_, receiver, _receiver);
    receiver = _receiver;
    return true;
}

event NewReceiverAddress(address _from, address _before, address);

function accept() external payable
    returns (bool)
{
    emit NewReceiverAddress(msg.sender, receiver, msg.sender);
    return true;
}
}
