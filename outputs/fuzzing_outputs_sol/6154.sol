pragma solidity ^0.8.0;
interface FallbackInterface {
}
contract MyFallbackWrapper {
    address admin;
    constructor() public {
        admin = msg.sender;
    }
    receive() public payable {
    }
}
