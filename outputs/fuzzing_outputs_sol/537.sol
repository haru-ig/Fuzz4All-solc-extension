pragma solidity ^0.8.0;
contract TestFallback {
    uint256 public constant n = 3;
    function fallback() public {
      uint s = msg.value / n;
      bytes memory v = bytes(abi.encodePacked(uint8(0x3e)));
    }
    function f() public {
        uint256 r = msg.value / n;
        uint256 s = (r + 3) / 4;
    }
}
