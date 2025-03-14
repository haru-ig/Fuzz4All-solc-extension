pragma solidity ^0.8.0;
contract Replaced
{
    event NewEvent(address indexed _add);

    constructor(uint _i) {}

    receive() external payable{
        emit NewEvent(msg.sender);
        _i++;
    }
}

contract Fallback
{
    function() external payable {}
}
