pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Removal {
    uint256 public a;
    uint256 public b;
    bytes32 public c;
    constructor(uint256 _b) public {
        b = _b - _b * uint256(type(uint256).max);
        c = keccak256(abi.encodePacked((0x9 * _b)));
        a = a - keccak256(abi.encodePacked(uint256(-1), (0x1 * _b)));
    }
}
