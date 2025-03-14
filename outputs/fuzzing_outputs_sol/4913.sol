pragma solidity ^0.8.0;
contract FallbackContract {
    constructor(uint128 _id) public {
        bytes32 _dummy = keccak256("Dummy");
        emit MyEvent(uint8(uint128(keccak256(abi.encodePacked(_dummy)))) % 100);
    }
    fallback() external payable {}
    receive() external payable {}

    event MyEvent(uint8 number);
}
