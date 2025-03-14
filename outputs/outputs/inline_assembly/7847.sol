pragma solidity ^0.8.0;
contract L23{
    constructor() public pure {}
    event ModifiedCalled(address newCalled);
    modifier Called {
        emit ModifiedCalled(msg.sender);
        _;
    }
    function modifyCalled() public Called {
    }
}
