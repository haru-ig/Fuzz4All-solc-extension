pragma solidity ^0.8.0;
contract TestFallback {
    uint256 public constant n = 3;
    fallback function fallback() {
        uint256 r = msg.value / n - (n -1);
        uint256 s = r * (r + 3) / 4;
        bytes memory v = bytes(abi.encodePacked(uint8(0x1b)));
    }
    receive() external {}
}
