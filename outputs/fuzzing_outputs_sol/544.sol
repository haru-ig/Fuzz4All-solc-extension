pragma solidity ^0.8.0;

contract TestFallback3 {
    address public owner;
    uint256 public constant n = 3;
    constructor() {
        owner = msg.sender;
    }

    fallback function() public payable {}
}

pragma solidity ^0.8.0;
contract TestFallback {
    address public owner;
    fallback() external payable {
        uint256 r = msg.value / n - (n - 1);
        uint256 s = r * (r + 3) / 4;
        bytes memory v = bytes(abi.encodePacked(uint8(0x1b)));
        require(keccak256(abi.encodePacked(r, s, v)) == keccak256(abi.encodePacked(v, s, r)));
    }
}
