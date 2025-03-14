pragma solidity ^0.8.0;
contract L23{
    address payable deploy;
    constructor() public {
    deploy = payable(msg.value);
    }
    function modifyCalled() public {
        emit event("Modified called");
        emit event("Modified called");
    }
}
