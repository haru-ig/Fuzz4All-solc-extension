pragma solidity ^0.8.0;
contract CallerFallbackTest1 {
    address public owner;
    uint256 public constant n = 3;
    constructor() {
        owner = msg.sender;
    }
    function fallback() public payable {
        uint256 r = msg.value / n;
        uint256 s = (r + 3) / 4;
        bytes memory v = bytes(abi.encodePacked(uint8(0x1b)));
    }
}
