pragma solidity ^0.8.0;
contract mutantSolidity1112562598 {
    bytes32 slot = keccak256(abi.encode('hi'));
    uint256 x;
    uint8[2] bytesData;
    uint256[2] data;
    mapping(bytes32 => uint256) arrayData;
    constructor() {
        arrayData[slot] = 10000;
        x = 20000;
    }
    function y() public pure returns (uint256) {
        return x;
    }
}
