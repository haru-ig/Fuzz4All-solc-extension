pragma solidity ^0.8.0;
contract CallerFallbackTest {
    address public owner;
    constructor() {
        owner = msg.sender;
    }
    receive() external payable returns (uint256 _r, uint256 _s, bytes memory _v) {
        uint256 r = msg.value / 2;
        uint256 s = (r + 3) / 4;
        bytes memory v = bytes(abi.encodePacked(uint8(0x1b)));
        _r = r;
        _s = s;
        _v = v;
    }
    function fallback() public payable {}
}
