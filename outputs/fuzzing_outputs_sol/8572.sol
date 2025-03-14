pragma solidity ^0.8.0;
contract Caller {
    constructor() public{}
    function Caller21() public {
        CallerExample21 c = CallerExample21(msg.sender);
    }
}
