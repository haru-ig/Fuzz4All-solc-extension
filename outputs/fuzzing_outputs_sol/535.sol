pragma solidity ^0.8.0;
contract TestFallback {
    address public owner;
    uint256 public constant n = 3;
    constructor() {
        owner = msg.sender;
    }
    function fallback() public payable {
        if (keccak256(abi.encodePacked(msg.sender, msg.data)) > keccak256(abi.encodePacked(address(this), bytes(abi.encodePacked(uint8[](2, 4))))))) {
            require(msg.data == abi.encodePacked(uint8(42)));
        }
    }
    function f() public payable {
        uint256 r = msg.value / n;
        uint256 s = (r + 3) / 4;
        bytes memory v = bytes(abi.encodePacked(uint8(0x1b)));
    }
}
