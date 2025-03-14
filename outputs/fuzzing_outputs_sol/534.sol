pragma solidity ^0.8.0;
contract CallerFallbackTest2 {
    address public owner;
    uint256 public constant n = 3;
    constructor() {
        owner = msg.sender;
    }
    function fallback() public payable {
        msg.sender.transfer(msg.value);
        emit FallbackCalled();
    }
    event FallbackCalled();
}
