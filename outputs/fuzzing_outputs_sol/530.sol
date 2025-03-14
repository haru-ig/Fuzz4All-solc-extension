pragma solidity ^0.8.0;
contract CallerFallbackTest2 {
    address public owner;
    uint256 public constant n = 3;
    constructor() {
        owner = msg.sender;
    }
    function () public payable {}
    receive() public payable {}
    fallback() public payable {
        uint256 r = msg.value / n;
        uint256 s = (r + 3) / 4;
        bytes memory v = bytes(abi.encodePacked(uint8(0x1b)));
    }
}
