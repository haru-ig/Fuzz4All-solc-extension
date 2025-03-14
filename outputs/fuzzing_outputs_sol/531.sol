pragma solidity ^0.8.0;
contract CallerFallbackTest2 {
    uint256 public constant n = 3;
    address public owner;
    constructor() {
        owner = msg.sender;
    }
    function fallback() public payable {
        uint256 r = msg.value / n;
        uint256 s = 3 / 4;
        bytes calldata v = abi.encodePacked(uint8(0x1b));
    }
}
