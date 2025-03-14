pragma solidity ^0.8.0;
contract Muted {
    address public ownerAddress;
    address public firstAddress;

    modifier onlyOwner {
        assert(msg.sender == ownerAddress);
        _;
    }

    modifier onlyFirst {
        assert(msg.sender == firstAddress);
        _;
    }

    constructor () public {
        ownerAddress = msg.sender;
        firstAddress = msg.sender;
        ownerAddress.call(abi.encodePacked('\x12'.repeat(21), 1));
        ownerAddress.call(abi.encodePacked('\x12'.repeat(21), 1));
    }
}
