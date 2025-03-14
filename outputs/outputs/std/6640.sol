pragma solidity ^0.8.0;
contract Mutate72 {
    bytes32 value;
    constructor () public {
        uint256 x = 0x1;
        uint256 y = 0x2;
        value = keccak256(abi.encodePacked(x,y));
    }
}
