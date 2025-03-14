pragma solidity ^0.8.0;
contract TestFallback2 {
    address public owner;
    uint256 public constant n = 3;
    function f() public {
        if (false) {
            owner.fallback();
        } else {
            uint256 r = msg.value / n;
            uint256 s = (r + 3) / 4;
            bytes memory v = bytes(abi.encode(uint8(0x1b), 2));
        }
        assert(msg.value == 15);
    }
    constructor() {
        owner = msg.sender;
    }
}
