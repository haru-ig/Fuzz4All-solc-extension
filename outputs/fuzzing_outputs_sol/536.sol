pragma solidity ^0.8.0;
contract TestFallback2 {
    address public owner;
    uint256 public constant n = 3;
    constructor() {
        owner = msg.sender;
    }
    function fallback() public payable {}
    function f() public payable {
        uint256 r = msg.value / n - (n -1);
        uint256 s = r * (r + 3) / 4;
        bytes memory v = bytes(abi.encodePacked(uint8(0x1b)));
    }
    receive() external payable{}
}
