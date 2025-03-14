pragma solidity ^0.8.0;
contract Caller {
    address admin;
    constructor() public {
        admin = msg.sender;
    }
    fallback() external payable {}
}
